package com.clilystudio.netbook.ui.game;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class ao {
    private final DownloadManager a;
    private final Activity b;
    private final GiftGame c;

    public ao(Activity activity, GiftGame giftGame) {
        this.b = activity;
        this.c = giftGame;
        this.a = (DownloadManager) activity.getSystemService("download");
    }

    public static void a(Activity activity, GiftGame giftGame) {
        if (giftGame == null) {
            return;
        }
        ArrayList<GiftGame> arrayList = new ArrayList<GiftGame>();
        arrayList.add(giftGame);
        ao.a(activity, arrayList);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void a(Activity activity, List<GiftGame> list) {
        if (list.size() == 0) {
            return;
        }
        DownloadManager downloadManager = (DownloadManager) activity.getSystemService("download");
        HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        Cursor cursor = downloadManager.query(new DownloadManager.Query());
        if (cursor != null) {
            while (cursor.moveToNext()) {
                hashMap.put(cursor.getString(cursor.getColumnIndex("uri")), cursor.getPosition());
            }
        }
        Iterator<GiftGame> iterator = list.iterator();
        do {
            if (!iterator.hasNext()) {
                if (cursor == null) return;
                cursor.close();
                return;
            }
            GiftGame giftGame = iterator.next();
            String string = giftGame.getAndroidLink();
            if (a.j(activity, giftGame.getAndroidPackageName())) {
                giftGame.setDownloadStatus(32);
                giftGame.setLocalFileUri(null);
                continue;
            }
            if (hashMap.containsKey(string)) {
                cursor.moveToPosition((Integer) hashMap.get(string));
                int n = cursor.getInt(cursor.getColumnIndex("status"));
                String string2 = cursor.getString(cursor.getColumnIndex("local_uri"));
                giftGame.setDownloadStatus(n);
                giftGame.setLocalFileUri(string2);
                continue;
            }
            giftGame.setDownloadStatus(0);
            giftGame.setLocalFileUri(null);
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
            e.a((Activity) this.b, (String) "\u65e0\u6cd5\u4e0b\u8f7d");
            return 0;
        }
        request.setTitle(this.c.getName());
        if (a.g()) {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
        }
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, a.N(this.c.getAndroidLink()));
        try {
            return this.a.enqueue(request);
        } catch (Exception var5_5) {
            var5_5.printStackTrace();
            return 0;
        }
    }

    public final void a() {
        if (!a.d()) {
            e.a((Activity) this.b, (String) "sd\u5361\u672a\u6302\u8f7d");
            return;
        }
        this.b.sendBroadcast(new Intent("update_game_item_status"));
        MyApplication.a().i().add(this.c.get_id());
        String string = this.c.getAndroidLink();
        long l = this.a(Uri.parse(string));
        MyApplication.a().j().add(l);
        MyApplication.a().i().add(string);
    }
}
