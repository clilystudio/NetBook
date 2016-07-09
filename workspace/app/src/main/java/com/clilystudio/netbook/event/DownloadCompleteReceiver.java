package com.clilystudio.netbook.event;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.hpay100.a.a;

import java.io.File;

public class DownloadCompleteReceiver extends BroadcastReceiver {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onReceive(Context context, Intent intent) {
        Cursor cursor;
        long l;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        try {
            if (!"android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) return;
            l = intent.getLongExtra("extra_download_id", 0);
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(l);
            cursor = downloadManager.query(query);
            if (cursor == null) return;
        } catch (Exception var4_10) {
            var4_10.printStackTrace();
            return;
        }
        if (!cursor.moveToFirst()) return;
        String string = cursor.getString(cursor.getColumnIndex("uri"));
        String string2 = cursor.getString(cursor.getColumnIndex("local_uri"));
        MyApplication myApplication = MyApplication.a();
        if (!myApplication.h().contains(string) && !myApplication.i().contains(string) && !myApplication.j().contains(l) && !a.B(string)) return;
        a.a(context, new File(Uri.parse(string2).getPath()));
        context.sendBroadcast(new Intent("update_game_item_status"));
    }
}
