package com.clilystudio.netbook.ui.game;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class s {
    private final DownloadManager a;
    private final Activity b;
    private final Game c;

    public s(Activity activity, Game game) {
        this.b = activity;
        this.c = game;
        this.a = (DownloadManager) activity.getSystemService("download");
    }

    public static void a(Activity activity, Game game) {
        if (game == null) {
            return;
        }
        ArrayList<Game> arrayList = new ArrayList<Game>();
        arrayList.add(game);
        s.a(activity, arrayList);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void a(Activity activity, List<Game> list) {
        if (list == null) return;
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
        Iterator<Game> iterator = list.iterator();
        do {
            if (!iterator.hasNext()) {
                if (cursor == null) return;
                cursor.close();
                return;
            }
            Game game = iterator.next();
            String string = game.getAndroidLink();
            if (a.j(activity, game.getAndroidPackageName())) {
                game.setDownloadStatus(32);
                game.setLocalFileUri(null);
                continue;
            }
            if (hashMap.containsKey(string)) {
                cursor.moveToPosition((Integer) hashMap.get(string));
                int n = cursor.getInt(cursor.getColumnIndex("status"));
                String string2 = cursor.getString(cursor.getColumnIndex("local_uri"));
                game.setDownloadStatus(n);
                game.setLocalFileUri(string2);
                continue;
            }
            game.setDownloadStatus(0);
            game.setLocalFileUri(null);
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
            e.a(this.b, "\u65e0\u6cd5\u4e0b\u8f7d");
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
            e.a(this.b, "sd\u5361\u672a\u6302\u8f7d");
            return;
        }
        String string = this.c.getAndroidLink();
        if (string == null) {
            e.a(this.b, "\u4e0b\u8f7d\u94fe\u63a5\u4e0d\u5b58\u5728");
            return;
        }
        this.b.sendBroadcast(new Intent("update_game_item_status"));
        MyApplication.a().i().add(this.c.get_id());
        long l = this.a(Uri.parse(string));
        MyApplication.a().j().add(l);
        MyApplication.a().i().add(string);
    }
}
