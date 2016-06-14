package com.clilystudio.netbook.reader.dl;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.clilystudio.netbook.am;
import android.support.v4.content.LocalBroadcastManager;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.util.I;
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
            f f2 = new f(this, 0);
            String[] arrstring = new String[]{this.a};
            f2.b(arrstring);
            return;
        }
        if (a.h(this.c)) {
            string2 = a.g(this.c);
            SourceRecord sourceRecord = SourceRecord.get(this.a, string2);
            if (sourceRecord == null || sourceRecord.getSourceId() == null) {
                f f3 = new f(this, 0);
                String[] arrstring = new String[]{this.a};
                f3.b(arrstring);
                return;
            }
            string = sourceRecord.getSourceId();
        } else {
            string = null;
            string2 = null;
        }
        this.b = a.a(this.a, this.c, string, this.b);
        this.k.a(this.b, string2, string);
        new g(this, 0).b(new Void[0]);
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
            new e(this, chapterLink, n).b(new Void[0]);
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
        i.a().c(new d(this.a, 4));
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
}
