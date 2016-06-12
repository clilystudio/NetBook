package com.clilystudio.netbook.event;

import android.app.DownloadManager;
import android.app.DownloadManager$Query;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;

import com.clilystudio.netbook.MyApplication;

import java.io.File;

public class DownloadCompleteReceiver extends BroadcastReceiver {

    public void onReceive(Context Context1, Intent Intent2) {
        DownloadManager DownloadManager3 = (DownloadManager) Context1.getSystemService("download");
        long long5;
        Cursor Cursor9;

        try {
            DownloadManager$Query Query7;

            if (!"android.intent.action.DOWNLOAD_COMPLETE".equals(Intent2.getAction()))
                return;
            long5 = Intent2.getLongExtra("extra_download_id", 0L);
            Query7 = new DownloadManager$Query();
            Query7.setFilterById(new long[]{long5});
            Cursor9 = DownloadManager3.query(Query7);
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
            return;
        }
        if (Cursor9 != null && Cursor9.moveToFirst()) {
            String String10 = Cursor9.getString(Cursor9.getColumnIndex("uri"));
            String String11 = Cursor9.getString(Cursor9.getColumnIndex("local_uri"));
            MyApplication MyApplication12 = MyApplication.a();

            if (MyApplication12.h().contains(String10) || MyApplication12.i().contains(String10) || MyApplication12.j().contains(Long.valueOf(long5)) || com.clilystudio.netbook.hpay100.a.a.B(String10)) {
                com.clilystudio.netbook.hpay100.a.a.a(Context1, new File(Uri.parse(String11).getPath()));
                Context1.sendBroadcast(new Intent("update_game_item_status"));
            }
        }
    }
}
