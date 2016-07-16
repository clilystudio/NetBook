package com.clilystudio.netbook.reader.dl;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.IBinder;
import android.support.v4.content.LocalBroadcastManager;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.reader.ReaderTocManager;
import com.clilystudio.netbook.util.BookInfoUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.squareup.otto.Subscribe;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class BookDownloadService extends Service {
    private String mBookId;
    private String mTocId;
    private int mReadMode;
    private int d;
    private int e;
    private int f;
    private ChapterLink[] g;
    private ArrayList<String> h;
    private Intent i = null;
    private boolean j = false;
    private ReaderTocManager k;
    private int l;
    private String m = null;
    private int n;
    private boolean o;

    private static void a(BookDlRecord bookDlRecord, int n) {
        if (bookDlRecord != null) {
            bookDlRecord.setStatus(n);
            bookDlRecord.save();
        }
        BusProvider.getInstance().post(new DownloadProgressEvent());
    }

    static /* synthetic */ void a(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.a(n);
    }

    static /* synthetic */ void a(BookDownloadService bookDownloadService, BookReadRecord bookReadRecord) {
        bookDownloadService.a(bookReadRecord);
    }

    static /* synthetic */ boolean a(BookDownloadService bookDownloadService) {
        return bookDownloadService.o;
    }

    static /* synthetic */ boolean a(BookDownloadService bookDownloadService, boolean bl) {
        bookDownloadService.j = bl;
        return bl;
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
        bookDownloadService.o = bl;
        return bl;
    }

    static /* synthetic */ int c(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.l = n;
        return n;
    }

    static /* synthetic */ void c(BookDownloadService bookDownloadService) {
        bookDownloadService.h();
    }

    static /* synthetic */ int e(BookDownloadService bookDownloadService, int n) {
        bookDownloadService.e = n;
        return n;
    }

    static /* synthetic */ void e(BookDownloadService bookDownloadService) {
        bookDownloadService.c();
    }

    static /* synthetic */ ReaderTocManager f(BookDownloadService bookDownloadService) {
        return bookDownloadService.k;
    }

    static /* synthetic */ void f(BookDownloadService bookDownloadService, int n) {
        BookDlRecord bookDlRecord = BookDlRecord.get(bookDownloadService.mBookId);
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
        if (bookDownloadService.mBookId != null && !bookDownloadService.mBookId.equals(bookDownloadService.m) && (bookReadRecord = BookReadRecord.get(bookDownloadService.mBookId)) != null) {
            String string = TempUtil.getSourceName(bookReadRecord.getReadMode());
            String string2 = bookReadRecord.getDownloadedSource();
            if (string2 == null || !string2.contains(string)) {
                bookReadRecord.setDownloadedSource(string2 + string);
                bookReadRecord.save();
            }
            bookDownloadService.m = bookDownloadService.mBookId;
        }
    }

    static /* synthetic */ String m(BookDownloadService bookDownloadService) {
        return bookDownloadService.mTocId;
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
            this.mBookId = bookDlRecord.getBookId();
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(this.mBookId);
            if (bookReadRecord == null) {
                this.g();
                return;
            }
            BookDownloadService.a(bookDlRecord, 5);
            this.mTocId = bookDlRecord.getTocId();
            this.mReadMode = bookDlRecord.getMode();
            this.d = bookDlRecord.getStart();
            this.e = bookDlRecord.getTotal();
            this.l = 0;
            this.f = 0;
            this.g = MyApplication.getInstance().getChapterCacheMap().get(this.mBookId);
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
        BookDownloadService.a(BookDlRecord.get(this.mBookId), n);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(BookReadRecord bookReadRecord) {
        String sourceId;
        String string2;
        this.k = new ReaderTocManager(bookReadRecord);
        if (this.mReadMode == -1) {
            getTocSourceRoot();
            return;
        }
        if (TempUtil.canDownload(this.mReadMode)) {
            string2 = TempUtil.getSourceName(this.mReadMode);
            SourceRecord sourceRecord = SourceRecord.get(this.mBookId, string2);
            if (sourceRecord == null || sourceRecord.getSourceId() == null) {
                getTocSourceRoot();
                return;
            }
            sourceId = sourceRecord.getSourceId();
        } else {
            sourceId = null;
            string2 = null;
        }
        this.mTocId = TempUtil.getMixTocId(this.mBookId, this.mReadMode, sourceId, this.mTocId);
        this.k.a(this.mTocId, string2, sourceId);
        new BaseAsyncTask<Void, Void, Toc>() {
            @Override
            protected Toc doInBackground(Void... params) {
                return BookDownloadService.f(BookDownloadService.this).a();
            }

            @Override
            protected void onPostExecute(Toc toc) {
                super.onPostExecute(toc);
                if (toc != null && toc.getChapters() != null) {
                    TempUtil.saveToc(BookDownloadService.this.mBookId, toc.get_id(), toc);
                    BookDownloadService.a(BookDownloadService.this, toc.getChapters());
                    BookDownloadService.e(BookDownloadService.this, BookDownloadService.p(BookDownloadService.this).length);
                    BookDownloadService.f(BookDownloadService.this, BookDownloadService.h(BookDownloadService.this));
                    BookDownloadService.q(BookDownloadService.this);
                    return;
                }
                ToastUtil.showToast(BookDownloadService.this.getApplicationContext(), "获取目录失败，暂时无法缓存");
                BookDownloadService.r(BookDownloadService.this);
            }
        }.b();
    }

    private void getTocSourceRoot() {
        new AsyncTask<String, Void, TocSourceRoot>() {
            @Override
            protected TocSourceRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().g(params[0]);
            }

            @Override
            protected void onPostExecute(TocSourceRoot tocSourceRoot) {
                super.onPostExecute(tocSourceRoot);
                if (tocSourceRoot != null && tocSourceRoot.getSources() != null) {
                    TocSource[] arrtocSource = tocSourceRoot.getSources();
                    for (TocSource anArrtocSource : arrtocSource) {
                        TempUtil.saveSourceRecord(anArrtocSource, BookDownloadService.this.mBookId);
                    }
                }
                BookDownloadService.this.mReadMode = 5;
                BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(BookDownloadService.this.mBookId);
                if (bookReadRecord != null) {
                    bookReadRecord.setReadMode(5);
                    bookReadRecord.save();
                    BookDownloadService.a(BookDownloadService.this, bookReadRecord);
                    return;
                }
                BookDownloadService.o(BookDownloadService.this);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mBookId);
    }

    private void b() {
        this.k = new ReaderTocManager(this.mReadMode);
        boolean bl = TempUtil.canDownload(this.mReadMode);
        String string = null;
        if (bl) {
            String string2 = TempUtil.getSourceName(this.mReadMode);
            SourceRecord sourceRecord = SourceRecord.get(this.mBookId, string2);
            string = null;
            if (sourceRecord != null) {
                string = sourceRecord.getSourceId();
                String string3 = sourceRecord.getSogouMd();
                this.k.a(string, string3);
            }
        }
        this.mTocId = TempUtil.getMixTocId(this.mBookId, this.mReadMode, string, this.mTocId);
        this.k.setTocId(BookInfoUtil.tocId);
        this.k.setBookId(BookInfoUtil.bookId);
        this.k.setReadMode(BookInfoUtil.readMode);
        this.i.putExtra("SerDlStopFlag", 0);
        this.h = TempUtil.getSubFileList(new File(CachePathConst.RootPath, "/ZhuiShuShenQi/Chapter" + File.separator + this.mBookId + File.separator + this.mTocId));
        if (TempUtil.getFreeSpaceSize() <= (long) (10 * this.e << 1)) {
            ToastUtil.showToast(this, "SD卡剩余容量不足，请减少缓存数目或增加存储");
            this.stopSelf();
            return;
        }
        this.a(2);
        BusProvider.getInstance().post(new DownloadStatusEvent(this.mBookId, 2));
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
            String string = CommonUtil.encodeUrl(chapterLink.getLink());
            while (bl || this.h.contains(string)) {
                this.f = 1 + this.f;
                n = this.d + this.f;
                if (n < this.g.length) {
                    chapterLink = this.g[n];
                    bl = chapterLink.getUnreadble();
                    string = CommonUtil.encodeUrl(chapterLink.getLink());
                    continue;
                }
                this.e();
                return;
            }
            final ChapterLink finalChapterLink = chapterLink;
            final int finalN = n;
            new BaseAsyncTask<Void, Void, ChapterRoot>() {
                @Override
                protected ChapterRoot doInBackground(Void... params) {
                    ChapterRoot chapterRoot = BookDownloadService.f(BookDownloadService.this).a(finalChapterLink, finalN);
                    BookDlRecord bookDlRecord = BookDlRecord.get(BookDownloadService.this.mBookId);
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
                    BookDownloadService.b(BookDownloadService.this).putExtra("bookId", BookDownloadService.this.mBookId);
                    BookDownloadService.i(BookDownloadService.this);
                    int n2 = TempUtil.r(BookDownloadService.this);
                    if (BookDownloadService.j(BookDownloadService.this) == 1 && n2 > 1) {
                        BookDownloadService.k(BookDownloadService.this);
                        ToastUtil.showToast(BookDownloadService.this.getApplicationContext(), "流量下自动暂停缓存，连接 Wi-Fi 继续或手动开始缓存");
                    } else if (TempUtil.isConnectedOrConnecting(BookDownloadService.this)) {
                        BookDownloadService.e(BookDownloadService.this);
                        BookDownloadService.b(BookDownloadService.this, false);
                    } else {
                        BookDownloadService.k(BookDownloadService.this);
                        ToastUtil.showToast(BookDownloadService.this.getApplicationContext(), "缓存暂停，连接网络后继续下载");
                    }
                    BookDownloadService.b(BookDownloadService.this, n2);
                    if (chapterRoot != null && chapterRoot.getChapter() != null && (chapter = chapterRoot.getChapter()).getBody() != null) {
                        String string = chapter.getLink();
                        BookDownloadService.b(BookDownloadService.this).putExtra("SerDlLink", string);
                        BookDownloadService.l(BookDownloadService.this);
                        if (BookDownloadService.m(BookDownloadService.this) == null) {
                            BookDownloadService.this.mTocId = BookInfoUtil.tocId;
                        }
                        TempUtil.saveChapter(BookDownloadService.this.mBookId, BookDownloadService.m(BookDownloadService.this), CommonUtil.encodeUrl(string), chapter);
                    }
                    BookDownloadService.c(BookDownloadService.this);
                    if (BookDownloadService.n(BookDownloadService.this) == 0 || BookDownloadService.g(BookDownloadService.this) == BookDownloadService.h(BookDownloadService.this)) {
                        BusProvider.getInstance().post(new DownloadProgressEvent());
                        BookDownloadService.c(BookDownloadService.this, BookDownloadService.g(BookDownloadService.this));
                    } else {
                        int nx = 1;
                        if (BookDownloadService.h(BookDownloadService.this) > 20) {
                            nx = BookDownloadService.h(BookDownloadService.this) / 20;
                        }
                        if (BookDownloadService.g(BookDownloadService.this) - BookDownloadService.n(BookDownloadService.this) < nx) return;
                        {
                            BusProvider.getInstance().post(new DownloadProgressEvent());
                            BookDownloadService.c(BookDownloadService.this, BookDownloadService.g(BookDownloadService.this));
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
        BusProvider.getInstance().post(new DownloadProgressEvent());
    }

    private void e() {
        this.i.putExtra("SerDlStopFlag", -1);
        this.h();
        BusProvider.getInstance().post(new DownloadStatusEvent(this.mBookId, 4));
        this.f();
        this.a();
    }

    private void f() {
        MyApplication.getInstance().getChapterCacheMap().remove(this.mBookId);
        MyApplication.getInstance().getBookDownloadList().remove(this.mBookId);
        BookDlRecord.delete(this.mBookId);
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
        BusProvider.getInstance().register(this);
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
        this.registerReceiver(new BookDownloadService.MyNetworkMonitor(this), intentFilter);
        this.a();
    }

    @Override
    public void onDestroy() {
        this.j = true;
        BusProvider.getInstance().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onDownloadStatus(DownloadStatusEvent d2) {
        switch (d2.getStatus()) {
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
        this.registerReceiver(new BookDownloadService.MyNetworkMonitor(this), intentFilter);
        return super.onStartCommand(intent, n, n2);
    }

    public class MyNetworkMonitor extends BroadcastReceiver {
        private /* synthetic */ BookDownloadService a;

        public MyNetworkMonitor(BookDownloadService bookDownloadService) {
            this.a = bookDownloadService;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (BookDownloadService.a(this.a) && TempUtil.r(this.a) == 1) {
                BookDownloadService.b(this.a).putExtra("SerDlStopFlag", 0);
                BookDownloadService.c(this.a);
                BookDownloadService.a(this.a, false);
                BookDownloadService.a(this.a, 2);
                BusProvider.getInstance().post(new DownloadStatusEvent(this.a.mBookId, 2));
                BookDownloadService.e(this.a);
                BookDownloadService.b(this.a, false);
            }
        }
    }

}
