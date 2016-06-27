package com.clilystudio.netbook.reader.dl;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.IBinder;
import com.clilystudio.netbook.am;
import android.support.v4.content.LocalBroadcastManager;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.util.e;
import com.squareup.a.l;

import java.util.ArrayList;
import java.util.List;

public class BookDownloadService extends Service {
    private String a;
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private ChapterLink[] g;
    private ArrayList<String> h;
    private Intent i = null;
    private boolean j = false;
    private com.clilystudio.netbook.reader.f k;
    private int l;
    private String m = null;
    private int n;
    private boolean o;

    static /* synthetic */ String a(BookDownloadService bookDownloadService, String string) {
        bookDownloadService.b = string;
        return string;
    }

    private static void a(BookDlRecord bookDlRecord, int n) {
        if (bookDlRecord != null) {
            bookDlRecord.setStatus(n);
            bookDlRecord.save();
        }
        i.a().c(new com.clilystudio.netbook.event.I());
    }

    static /* synthetic */ void a(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.a(2);
    }

    static /* synthetic */ void a(BookDownloadService bookDownloadService, BookReadRecord bookReadRecord) {
        bookDownloadService.a(bookReadRecord);
    }

    static /* synthetic */ boolean a(BookDownloadService bookDownloadService) {
        return bookDownloadService.o;
    }

    static /* synthetic */ boolean a(BookDownloadService bookDownloadService, boolean bl) {
        bookDownloadService.j = false;
        return false;
    }

    static /* synthetic */ ChapterLink[] a(BookDownloadService bookDownloadService, ChapterLink[] arrchapterLink) {
        bookDownloadService.g = arrchapterLink;
        return arrchapterLink;
    }

    static /* synthetic */ int b(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.n = n;
        return n;
    }

    static /* synthetic */ Intent b(BookDownloadService bookDownloadService) {
        return bookDownloadService.i;
    }

    static /* synthetic */ boolean b(BookDownloadService bookDownloadService, boolean bl) {
        bookDownloadService.o = false;
        return false;
    }

    static /* synthetic */ int c(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.l = n;
        return n;
    }

    static /* synthetic */ void c(BookDownloadService bookDownloadService) {
        bookDownloadService.h();
    }

    static /* synthetic */ int d(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.c = 5;
        return 5;
    }

    static /* synthetic */ String d(BookDownloadService bookDownloadService) {
        return bookDownloadService.a;
    }

    static /* synthetic */ int e(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.e = n;
        return n;
    }

    static /* synthetic */ void e(BookDownloadService bookDownloadService) {
        bookDownloadService.c();
    }

    static /* synthetic */ com.clilystudio.netbook.reader.f f(BookDownloadService bookDownloadService) {
        return bookDownloadService.k;
    }

    static /* synthetic */ void f(BookDownloadService bookDownloadService, int n) {
        BookDlRecord bookDlRecord = BookDlRecord.get(bookDownloadService.a);
        if (bookDlRecord != null) {
            bookDlRecord.setTotal(n);
            bookDlRecord.save();
        }
    }

    static /* synthetic */ int g(BookDownloadService bookDownloadService) {
        return bookDownloadService.f;
    }

    static /* synthetic */ int h(BookDownloadService bookDownloadService) {
        return bookDownloadService.e;
    }

    static /* synthetic */ int i(BookDownloadService bookDownloadService) {
        int n = bookDownloadService.f;
        bookDownloadService.f = n + 1;
        return n;
    }

    static /* synthetic */ int j(BookDownloadService bookDownloadService) {
        return bookDownloadService.n;
    }

    static /* synthetic */ void k(BookDownloadService bookDownloadService) {
        bookDownloadService.i.putExtra("SerDlStopFlag", -2);
        bookDownloadService.h();
        bookDownloadService.a(3);
        bookDownloadService.o = true;
    }

    static /* synthetic */ void l(BookDownloadService bookDownloadService) {
        BookReadRecord bookReadRecord;
        if (bookDownloadService.a != null && !bookDownloadService.a.equals(bookDownloadService.m) && (bookReadRecord = BookReadRecord.get(bookDownloadService.a)) != null) {
            String string = a.g(bookReadRecord.getReadMode());
            String string2 = bookReadRecord.getDownloadedSource();
            if (string2 == null || !string2.contains(string)) {
                bookReadRecord.setDownloadedSource(string2 + string);
                bookReadRecord.save();
            }
            bookDownloadService.m = bookDownloadService.a;
        }
    }

    static /* synthetic */ String m(BookDownloadService bookDownloadService) {
        return bookDownloadService.b;
    }

    static /* synthetic */ int n(BookDownloadService bookDownloadService) {
        return bookDownloadService.l;
    }

    static /* synthetic */ void o(BookDownloadService bookDownloadService) {
        bookDownloadService.g();
    }

    static /* synthetic */ ChapterLink[] p(BookDownloadService bookDownloadService) {
        return bookDownloadService.g;
    }

    static /* synthetic */ void q(BookDownloadService bookDownloadService) {
        bookDownloadService.b();
    }

    static /* synthetic */ void r(BookDownloadService bookDownloadService) {
        bookDownloadService.d();
    }

    private void a() {
        List<BookDlRecord> list = BookDlRecord.getAllPending();
        if (list.size() > 0) {
            BookDlRecord bookDlRecord = list.get(0);
            this.a = bookDlRecord.getBookId();
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(this.a);
            if (bookReadRecord == null) {
                this.g();
                return;
            }
            BookDownloadService.a(bookDlRecord, 5);
            this.b = bookDlRecord.getTocId();
            this.c = bookDlRecord.getMode();
            this.d = bookDlRecord.getStart();
            this.e = bookDlRecord.getTotal();
            this.l = 0;
            this.f = 0;
            this.g = MyApplication.a().e().get(this.a);
            if (this.g != null && this.e > 0) {
                this.b();
                return;
            }
            this.a(bookReadRecord);
            return;
        }
        this.stopSelf();
    }

    private void a(int n) {
        BookDownloadService.a(BookDlRecord.get(this.a), n);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(BookReadRecord bookReadRecord) {
        String string;
        String string2;
        this.k = new com.clilystudio.netbook.reader.f(bookReadRecord);
        if (this.c == -1) {
            getTocSourceRoot();
            return;
        }
        if (com.clilystudio.netbook.hpay100.a.a.h(this.c)) {
            string2 = com.clilystudio.netbook.hpay100.a.a.g(this.c);
            SourceRecord sourceRecord = SourceRecord.get(this.a, string2);
            if (sourceRecord == null || sourceRecord.getSourceId() == null) {
                getTocSourceRoot();
                return;
            }
            string = sourceRecord.getSourceId();
        } else {
            string = null;
            string2 = null;
        }
        this.b = com.clilystudio.netbook.hpay100.a.a.a(this.a, this.c, string, this.b);
        this.k.a(this.b, string2, string);
        new com.clilystudio.netbook.a_pack.e<Void, Void, Toc>(){
            @Override
            protected Toc doInBackground(Void... params) {
                return BookDownloadService.f(BookDownloadService.this).a();
            }

            @Override
            protected void onPostExecute(Toc toc) {
                 super.onPostExecute(toc);
                if (toc != null && toc.getChapters() != null) {
                    com.clilystudio.netbook.hpay100.a.a.a(BookDownloadService.d(BookDownloadService.this), toc.get_id(), "toc", toc);
                    BookDownloadService.a(BookDownloadService.this, toc.getChapters());
                    BookDownloadService.e(BookDownloadService.this, BookDownloadService.p(BookDownloadService.this).length);
                    BookDownloadService.f(BookDownloadService.this, BookDownloadService.h(BookDownloadService.this));
                    BookDownloadService.q(BookDownloadService.this);
                    return;
                }
                com.clilystudio.netbook.util.e.a(BookDownloadService.this.getApplicationContext(), "获取目录失败，暂时无法缓存");
                BookDownloadService.r(BookDownloadService.this);
            }
        }.b();
    }

    private void getTocSourceRoot() {
        new AsyncTask<String, Void, TocSourceRoot>(){
            @Override
            protected TocSourceRoot doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                TocSourceRoot tocSourceRoot = com.clilystudio.netbook.api.b.b().g(params[0]);
                return tocSourceRoot;
            }

            @Override
            protected void onPostExecute(TocSourceRoot tocSourceRoot) {
                super.onPostExecute(tocSourceRoot);
                if (tocSourceRoot != null && tocSourceRoot.getSources() != null) {
                    TocSource[] arrtocSource = tocSourceRoot.getSources();
                    int n = arrtocSource.length;
                    for (int j = 0; j < n; ++j) {
                        com.clilystudio.netbook.hpay100.a.a.a(arrtocSource[j], BookDownloadService.d(BookDownloadService.this));
                    }
                }
                BookDownloadService.d(BookDownloadService.this, 5);
                BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(BookDownloadService.d(BookDownloadService.this));
                if (bookReadRecord != null) {
                    bookReadRecord.setReadMode(5);
                    bookReadRecord.save();
                    BookDownloadService.a(BookDownloadService.this, bookReadRecord);
                    return;
                }
                BookDownloadService.o(BookDownloadService.this);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR,  new String[]{this.a});
    }

    private void b() {
        this.k = new com.clilystudio.netbook.reader.f(this.c);
        boolean bl = a.h(this.c);
        String string = null;
        if (bl) {
            String string2 = a.g(this.c);
            SourceRecord sourceRecord = SourceRecord.get(this.a, string2);
            string = null;
            if (sourceRecord != null) {
                string = sourceRecord.getSourceId();
                String string3 = sourceRecord.getSogouMd();
                this.k.a(string, string3);
            }
        }
        this.b = a.a(this.a, this.c, string, this.b);
        this.k.b(I.c);
        this.k.a(I.a);
        this.k.a(I.g);
        this.i.putExtra("SerDlStopFlag", 0);
        this.h = a.j(this.a, this.b);
        if (a.e() <= (long) (10 * this.e << 1)) {
            com.clilystudio.netbook.util.e.a((Context) this, (String) "SD\u5361\u5269\u4f59\u5bb9\u91cf\u4e0d\u8db3\uff0c\u8bf7\u51cf\u5c11\u7f13\u5b58\u6570\u76ee\u6216\u589e\u52a0\u5b58\u50a8");
            this.stopSelf();
            return;
        }
        this.a(2);
        i.a().c(new d(this.a, 2));
        this.c();
    }

    private void c() {
        if (this.j || this.g == null) {
            return;
        }
        int n = this.d + this.f;
        if (n < this.g.length && this.f <= this.e) {
            ChapterLink chapterLink = this.g[n];
            boolean bl = chapterLink.getUnreadble();
            String string = am.e((String) chapterLink.getLink());
            while (bl || this.h.contains(string)) {
                this.f = 1 + this.f;
                n = this.d + this.f;
                if (n < this.g.length) {
                    chapterLink = this.g[n];
                    bl = chapterLink.getUnreadble();
                    string = am.e((String) chapterLink.getLink());
                    continue;
                }
                this.e();
                return;
            }
            final ChapterLink finalChapterLink = chapterLink;
            final int finalN = n;
            new com.clilystudio.netbook.a_pack.e<Void, Void, ChapterRoot>(){
                @Override
                protected ChapterRoot doInBackground(Void... params) {
                    ChapterRoot chapterRoot = BookDownloadService.f(BookDownloadService.this).a(finalChapterLink, finalN);
                    BookDlRecord bookDlRecord = BookDlRecord.get(BookDownloadService.d(BookDownloadService.this));
                    if (bookDlRecord != null) {
                        bookDlRecord.setProgress(BookDownloadService.g(BookDownloadService.this));
                        bookDlRecord.save();
                    }
                    return chapterRoot;
                }

                @Override
                protected void onPostExecute(ChapterRoot chapterRoot) {
                    Chapter chapter;
                     super.onPostExecute(chapterRoot);
                    BookDownloadService.b(BookDownloadService.this).putExtra("SerDlCurrentCount", BookDownloadService.g(BookDownloadService.this));
                    BookDownloadService.b(BookDownloadService.this).putExtra("SerDlChapterCount", BookDownloadService.h(BookDownloadService.this));
                    BookDownloadService.b(BookDownloadService.this).putExtra("bookId", BookDownloadService.d(BookDownloadService.this));
                    BookDownloadService.i(BookDownloadService.this);
                    int n2 = com.clilystudio.netbook.hpay100.a.a.r(BookDownloadService.this);
                    if (BookDownloadService.j(BookDownloadService.this) == 1 && n2 > 1) {
                        BookDownloadService.k(BookDownloadService.this);
                        com.clilystudio.netbook.util.e.a((Context) BookDownloadService.this.getApplicationContext(), (String) "\u6d41\u91cf\u4e0b\u81ea\u52a8\u6682\u505c\u7f13\u5b58\uff0c\u8fde\u63a5 Wi-Fi \u7ee7\u7eed\u6216\u624b\u52a8\u5f00\u59cb\u7f13\u5b58");
                    } else if (com.clilystudio.netbook.hpay100.a.a.t(BookDownloadService.this)) {
                        BookDownloadService.e(BookDownloadService.this);
                        BookDownloadService.b(BookDownloadService.this, false);
                    } else {
                        BookDownloadService.k(BookDownloadService.this);
                        com.clilystudio.netbook.util.e.a((Context) BookDownloadService.this.getApplicationContext(), (String) "\u7f13\u5b58\u6682\u505c\uff0c\u8fde\u63a5\u7f51\u7edc\u540e\u7ee7\u7eed\u4e0b\u8f7d");
                    }
                    BookDownloadService.b(BookDownloadService.this, n2);
                    if (chapterRoot != null && chapterRoot.getChapter() != null && (chapter = chapterRoot.getChapter()).getBody() != null) {
                        String string = chapter.getLink();
                        BookDownloadService.b(BookDownloadService.this).putExtra("SerDlLink", string);
                        BookDownloadService.l(BookDownloadService.this);
                        if (BookDownloadService.m(BookDownloadService.this) == null) {
                            BookDownloadService.a(BookDownloadService.this, I.c);
                        }
                        com.clilystudio.netbook.hpay100.a.a.a(BookDownloadService.d(BookDownloadService.this), BookDownloadService.m(BookDownloadService.this), am.e((String) string), chapter);
                    }
                    BookDownloadService.c(BookDownloadService.this);
                    if (BookDownloadService.n(BookDownloadService.this) == 0 || BookDownloadService.g(BookDownloadService.this) == BookDownloadService.h(BookDownloadService.this)) {
                        com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.I());
                        BookDownloadService.c(BookDownloadService.this, BookDownloadService.g(BookDownloadService.this));
                        return;
                    } else {
                        int nx = 1;
                        if (BookDownloadService.h(BookDownloadService.this) > 20) {
                            nx = BookDownloadService.h(BookDownloadService.this) / 20;
                        }
                        if (BookDownloadService.g(BookDownloadService.this) - BookDownloadService.n(BookDownloadService.this) < nx) return;
                        {
                            com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.I());
                            BookDownloadService.c(BookDownloadService.this, BookDownloadService.g(BookDownloadService.this));
                            return;
                        }
                    }
                }
            }.b();
            return;
        }
        this.e();
    }

    private void d() {
        this.i.putExtra("SerDlStopFlag", -2);
        this.h();
        this.a(3);
        this.a();
        i.a().c(new com.clilystudio.netbook.event.I());
    }

    private void e() {
        this.i.putExtra("SerDlStopFlag", -1);
        this.h();
        com.clilystudio.netbook.event.i.a().post(new d(this.a, 4));
        this.f();
        this.a();
    }

    private void f() {
        MyApplication.a().e().remove(this.a);
        MyApplication.a().f().remove(this.a);
        BookDlRecord.delete(this.a);
    }

    private void g() {
        this.f();
        this.a();
    }

    private void h() {
        LocalBroadcastManager.getInstance(this.getApplicationContext()).sendBroadcast(this.i);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        i.a().a(this);
        this.i = new Intent("com.clilystudio.netbook.dlReceiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.supplicant.CONNECTION_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.PICK_WIFI_NETWORK");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.setPriority(1000);
        this.registerReceiver(new BookDownloadService$MyNetworkMonitor(this), intentFilter);
        this.a();
    }

    @Override
    public void onDestroy() {
        this.j = true;
        i.a().b(this);
        super.onDestroy();
    }

    @l
    public void onDownloadStatus(d d2) {
        switch (d2.a()) {
            default: {
                return;
            }
            case 3:
        }
        this.d();
    }

    @Override
    public int onStartCommand(Intent intent, int n, int n2) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.supplicant.CONNECTION_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.PICK_WIFI_NETWORK");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.setPriority(1000);
        this.registerReceiver(new BookDownloadService$MyNetworkMonitor(this), intentFilter);
        return super.onStartCommand(intent, n, n2);
    }

    public class MyNetworkMonitor extends BroadcastReceiver {
        private /* synthetic */ BookDownloadService a;

        public MyNetworkMonitor(BookDownloadService bookDownloadService) {
            this.a = bookDownloadService;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (BookDownloadService.a(this.a) && a.r(this.a) == 1) {
                BookDownloadService.b(this.a).putExtra("SerDlStopFlag", 0);
                BookDownloadService.c(this.a);
                BookDownloadService.a(this.a, false);
                BookDownloadService.a(this.a, 2);
                com.clilystudio.netbook.event.i.a().c(new d(BookDownloadService.d(this.a), 2));
                BookDownloadService.e(this.a);
                BookDownloadService.b(this.a, false);
            }
        }
    }

}
