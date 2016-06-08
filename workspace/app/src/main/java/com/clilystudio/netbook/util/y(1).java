package com.clilystudio.netbook.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
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

    public y(Context paramContext, AppItem paramAppItem) {
        this.c = paramContext;
        this.a = paramAppItem;
        this.b = ((DownloadManager) paramContext.getSystemService("download"));
        Account localAccount = am.e();
        if (localAccount != null)
            new Thread(new z(this, localAccount.getToken())).start();
    }

    public static void a(Activity paramActivity, List<AppItem> paramList) {
        if ((paramList == null) || (paramList.isEmpty())) ;
        Cursor localCursor;
        do {
            AppItem[] arrayOfAppItem;
            do {
                return;
                arrayOfAppItem = (AppItem[]) paramList.toArray(new AppItem[paramList.size()]);
            }
            while ((arrayOfAppItem == null) || (arrayOfAppItem.length == 0));
            DownloadManager localDownloadManager = (DownloadManager) paramActivity.getSystemService("download");
            HashMap localHashMap = new HashMap();
            localCursor = localDownloadManager.query(new DownloadManager.Query());
            if (localCursor != null)
                while (localCursor.moveToNext())
                    localHashMap.put(localCursor.getString(localCursor.getColumnIndex("uri")), Integer.valueOf(localCursor.getPosition()));
            int i = arrayOfAppItem.length;
            int j = 0;
            if (j >= i)
                continue;
            AppItem localAppItem = (AppItem) arrayOfAppItem[j];
            String str1 = localAppItem.getDownload_link();
            if (a.j(paramActivity, localAppItem.getPackageName())) {
                localAppItem.setDownloadStatus(32);
                localAppItem.setLocalFileUri(null);
            }
            while (true) {
                j++;
                break;
                if (localHashMap.containsKey(str1)) {
                    localCursor.moveToPosition(((Integer) localHashMap.get(str1)).intValue());
                    int k = localCursor.getInt(localCursor.getColumnIndex("status"));
                    String str2 = localCursor.getString(localCursor.getColumnIndex("local_uri"));
                    localAppItem.setDownloadStatus(k);
                    localAppItem.setLocalFileUri(str2);
                    continue;
                }
                localAppItem.setDownloadStatus(0);
                localAppItem.setLocalFileUri(null);
            }
        }
        while (localCursor == null);
        localCursor.close();
    }

    @TargetApi(11)
    private long a(Uri paramUri) {
        try {
            localRequest = new DownloadManager.Request(paramUri);
            if (localRequest == null) {
                Toast.makeText(this.c, "无法下载", 0).show();
                return 0L;
            }
        } catch (IllegalArgumentException localIllegalArgumentException) {
            DownloadManager.Request localRequest;
            while (true) {
                localIllegalArgumentException.printStackTrace();
                localRequest = null;
            }
            localRequest.setTitle(this.a.getName());
            if (a.g()) {
                localRequest.allowScanningByMediaScanner();
                localRequest.setNotificationVisibility(1);
            }
            localRequest.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, a.N(this.a.getDownload_link()));
            try {
                long l = this.b.enqueue(localRequest);
                return l;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        }
        return 0L;
    }

    public final void a() {
        if (!a.d())
            return;
        this.c.sendBroadcast(new Intent("update_game_item_status"));
        MyApplication.a().i().add(this.a.get_id());
        String str = this.a.getDownload_link();
        long l = a(Uri.parse(str));
        MyApplication.a().j().add(Long.valueOf(l));
        MyApplication.a().i().add(str);
    }
}

