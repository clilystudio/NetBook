package com.clilystudio.app.netbook.event;

import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.MyApplication;
import java.io.File;
import java.util.List;

public class DownloadCompleteReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    DownloadManager localDownloadManager = (DownloadManager)paramContext.getSystemService("download");
    try
    {
      if ("android.intent.action.DOWNLOAD_COMPLETE".equals(paramIntent.getAction()))
      {
        long l = paramIntent.getLongExtra("extra_download_id", 0L);
        DownloadManager.Query localQuery = new DownloadManager.Query();
        localQuery.setFilterById(new long[] { l });
        Cursor localCursor = localDownloadManager.query(localQuery);
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          String str1 = localCursor.getString(localCursor.getColumnIndex("uri"));
          String str2 = localCursor.getString(localCursor.getColumnIndex("local_uri"));
          MyApplication localMyApplication = MyApplication.a();
          if ((localMyApplication.h().contains(str1)) || (localMyApplication.i().contains(str1)) || (localMyApplication.j().contains(Long.valueOf(l))) || (a.B(str1)))
          {
            a.a(paramContext, new File(Uri.parse(str2).getPath()));
            paramContext.sendBroadcast(new Intent("update_game_item_status"));
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.event.DownloadCompleteReceiver
 * JD-Core Version:    0.6.2
 */