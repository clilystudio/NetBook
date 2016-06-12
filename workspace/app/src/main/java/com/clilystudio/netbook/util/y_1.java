package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.DownloadManager;
import android.app.DownloadManager$Query;
import android.app.DownloadManager$Request;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.support.design.widget.am;
import android.widget.Toast;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.AppItem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class y {

    public AppItem a;     // final access specifier removed
    private DownloadManager b;     // final access specifier removed
    private Context c;
    public y(Context Context1, AppItem AppItem2) {
        Account Account3;

        c = Context1;
        a = AppItem2;
        b = (DownloadManager) Context1.getSystemService("download");
        Account3 = am.e();
        if (Account3 != null)
            new Thread((Runnable) new z(this, Account3.getToken())).start();
    }

    public static void a(Activity Activity1, List List2) {
        if (List2 != null && !List2.isEmpty()) {
            AppItem[] AppItem_1darray3 = (AppItem[]) List2.toArray(new AppItem[List2.size()]);

            if (AppItem_1darray3 != null && AppItem_1darray3.length != 0) {
                DownloadManager DownloadManager4 = (DownloadManager) Activity1.getSystemService("download");
                Object Object5 = new HashMap();
                Cursor Cursor6 = DownloadManager4.query(new DownloadManager$Query());
                int int7;
                int int8;

                if (Cursor6 != null) {
                    while (Cursor6.moveToNext())
                        ((Map) Object5).put(Cursor6.getString(Cursor6.getColumnIndex("uri")), Integer.valueOf(Cursor6.getPosition()));
                }
                int7 = AppItem_1darray3.length;
                for (int8 = 0; int8 < int7; ++int8) {
                    AppItem AppItem9 = (AppItem) AppItem_1darray3[int8];
                    String String10 = AppItem9.getDownload_link();

                    if (com.clilystudio.netbook.hpay100.a.a.j((Context) Activity1, AppItem9.getPackageName())) {
                        AppItem9.setDownloadStatus(32);
                        AppItem9.setLocalFileUri(null);
                    } else if (((Map) Object5).containsKey(String10)) {
                        int int12;
                        String String13;

                        Cursor6.moveToPosition(((Integer) ((Map) Object5).get(String10)).intValue());
                        int12 = Cursor6.getInt(Cursor6.getColumnIndex("status"));
                        String13 = Cursor6.getString(Cursor6.getColumnIndex("local_uri"));
                        AppItem9.setDownloadStatus(int12);
                        AppItem9.setLocalFileUri(String13);
                    } else {
                        AppItem9.setDownloadStatus(0);
                        AppItem9.setLocalFileUri(null);
                    }
                }
                if (Cursor6 != null) {
                    Cursor6.close();
                    return;
                }
            }
        }
    }

    private long a(Uri Uri1) {
        DownloadManager$Request Request2;

        try {
            Request2 = new DownloadManager$Request(Uri1);
        } catch (IllegalArgumentException IllegalArgumentException9) {
            IllegalArgumentException9.printStackTrace();
            Request2 = null;
        }
        if (Request2 == null) {
            Toast.makeText(c, (CharSequence) "\u65E0\u6CD5\u4E0B\u8F7D", 0).show();
            return 0L;
        } else {
            long long6;

            Request2.setTitle((CharSequence) a.getName());
            if (com.clilystudio.netbook.hpay100.a.a.g()) {
                Request2.allowScanningByMediaScanner();
                Request2.setNotificationVisibility(1);
            }
            Request2.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, com.clilystudio.netbook.hpay100.a.a.N(a.getDownload_link()));
            try {
                long6 = b.enqueue(Request2);
            } catch (Exception Exception5) {
                Exception5.printStackTrace();
                return 0L;
            }
            return long6;
        }
    }

    public final void a() {
        if (com.clilystudio.netbook.hpay100.a.a.d()) {
            String String2;
            long long3;

            c.sendBroadcast(new Intent("update_game_item_status"));
            MyApplication.a().i().add(a.get_id());
            String2 = a.getDownload_link();
            long3 = a(Uri.parse(String2));
            MyApplication.a().j().add(Long.valueOf(long3));
            MyApplication.a().i().add(String2);
        }
    }
}
