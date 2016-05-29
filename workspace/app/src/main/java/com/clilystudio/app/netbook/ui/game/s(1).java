package com.clilystudio.app.netbook.ui.game;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.util.e;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class s {
    private final DownloadManager a;
    private final Activity b;
    private final Game c;

    public s(Activity paramActivity, Game paramGame) {
        this.b = paramActivity;
        this.c = paramGame;
        this.a = ((DownloadManager) paramActivity.getSystemService("download"));
    }

    @TargetApi(11)
    private long a(Uri paramUri) {
        try {
            localRequest = new DownloadManager.Request(paramUri);
            if (localRequest == null) {
                e.a(this.b, "无法下载");
                return 0L;
            }
        } catch (IllegalArgumentException localIllegalArgumentException) {
            DownloadManager.Request localRequest;
            while (true) {
                localIllegalArgumentException.printStackTrace();
                localRequest = null;
            }
            localRequest.setTitle(this.c.getName());
            if (a.g()) {
                localRequest.allowScanningByMediaScanner();
                localRequest.setNotificationVisibility(1);
            }
            localRequest.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, a.N(this.c.getAndroidLink()));
            try {
                long l = this.a.enqueue(localRequest);
                return l;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        }
        return 0L;
    }

    public static void a(Activity paramActivity, Game paramGame) {
        if (paramGame == null)
            return;
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(paramGame);
        a(paramActivity, localArrayList);
    }

    public static void a(Activity paramActivity, List<Game> paramList) {
        if ((paramList == null) || (paramList.size() == 0)) ;
        Cursor localCursor;
        do {
            return;
            DownloadManager localDownloadManager = (DownloadManager) paramActivity.getSystemService("download");
            HashMap localHashMap = new HashMap();
            localCursor = localDownloadManager.query(new DownloadManager.Query());
            if (localCursor != null)
                while (localCursor.moveToNext())
                    localHashMap.put(localCursor.getString(localCursor.getColumnIndex("uri")), Integer.valueOf(localCursor.getPosition()));
            Iterator localIterator = paramList.iterator();
            while (localIterator.hasNext()) {
                Game localGame = (Game) localIterator.next();
                String str1 = localGame.getAndroidLink();
                if (a.j(paramActivity, localGame.getAndroidPackageName())) {
                    localGame.setDownloadStatus(32);
                    localGame.setLocalFileUri(null);
                } else if (localHashMap.containsKey(str1)) {
                    localCursor.moveToPosition(((Integer) localHashMap.get(str1)).intValue());
                    int i = localCursor.getInt(localCursor.getColumnIndex("status"));
                    String str2 = localCursor.getString(localCursor.getColumnIndex("local_uri"));
                    localGame.setDownloadStatus(i);
                    localGame.setLocalFileUri(str2);
                } else {
                    localGame.setDownloadStatus(0);
                    localGame.setLocalFileUri(null);
                }
            }
        }
        while (localCursor == null);
        localCursor.close();
    }

    public final void a() {
        if (!a.d()) {
            e.a(this.b, "sd卡未挂载");
            return;
        }
        String str = this.c.getAndroidLink();
        if (str == null) {
            e.a(this.b, "下载链接不存在");
            return;
        }
        this.b.sendBroadcast(new Intent("update_game_item_status"));
        MyApplication.a_getInstance().i().add(this.c.get_id());
        long l = a(Uri.parse(str));
        MyApplication.a_getInstance().j().add(Long.valueOf(l));
        MyApplication.a_getInstance().i().add(str);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.s
 * JD-Core Version:    0.6.2
 */