package com.clilystudio.netbook.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
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

public final class y {
    public final AppItem a;
    private final DownloadManager b;
    private Context c;

    public y(Context context, AppItem appItem) {
        this.c = context;
        this.a = appItem;
        this.b = (DownloadManager) context.getSystemService("download");
        Account account = am.e();
        if (account != null) {
            new Thread(new z(this, account.getToken())).start();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void a(Activity activity, List<AppItem> list) {
        if (list == null) return;
        if (list.isEmpty()) {
            return;
        }
        AppItem[] arrappItem = list.toArray(new AppItem[list.size()]);
        if (arrappItem == null) return;
        if (arrappItem.length == 0) return;
        DownloadManager downloadManager = (DownloadManager) activity.getSystemService("download");
        HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        Cursor cursor = downloadManager.query(new DownloadManager.Query());
        if (cursor != null) {
            while (cursor.moveToNext()) {
                hashMap.put(cursor.getString(cursor.getColumnIndex("uri")), cursor.getPosition());
            }
        }
        int n = arrappItem.length;
        int n2 = 0;
        do {
            if (n2 >= n) {
                if (cursor == null) return;
                cursor.close();
                return;
            }
            AppItem appItem = arrappItem[n2];
            String string = appItem.getDownload_link();
            if (a.j(activity, appItem.getPackageName())) {
                appItem.setDownloadStatus(32);
                appItem.setLocalFileUri(null);
            } else if (hashMap.containsKey(string)) {
                cursor.moveToPosition((Integer) hashMap.get(string));
                int n3 = cursor.getInt(cursor.getColumnIndex("status"));
                String string2 = cursor.getString(cursor.getColumnIndex("local_uri"));
                appItem.setDownloadStatus(n3);
                appItem.setLocalFileUri(string2);
            } else {
                appItem.setDownloadStatus(0);
                appItem.setLocalFileUri(null);
            }
            ++n2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @TargetApi(value = 11)
    private long a(Uri uri) {
        DownloadManager.Request request;
        try {
            request = new DownloadManager.Request(uri);
        } catch (IllegalArgumentException var9_3) {
            var9_3.printStackTrace();
            request = null;
        }
        if (request == null) {
            Toast.makeText(this.c, "\u65e0\u6cd5\u4e0b\u8f7d", 0).show();
            return 0;
        }
        request.setTitle(this.a.getName());
        if (a.g()) {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
        }
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, a.N(this.a.getDownload_link()));
        try {
            return this.b.enqueue(request);
        } catch (Exception var5_5) {
            var5_5.printStackTrace();
            return 0;
        }
    }

    public final void a() {
        if (!a.d()) {
            return;
        }
        this.c.sendBroadcast(new Intent("update_game_item_status"));
        MyApplication.a().i().add(this.a.get_id());
        String string = this.a.getDownload_link();
        long l = this.a(Uri.parse(string));
        MyApplication.a().j().add(l);
        MyApplication.a().i().add(string);
    }
}
