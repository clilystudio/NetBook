package com.clilystudio.app.netbook.ui.game;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.app.DownloadManager.Request;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.model.GiftGame;
import com.clilystudio.app.netbook.util.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ao
{
  private final DownloadManager a;
  private final Activity b;
  private final GiftGame c;

  public ao(Activity paramActivity, GiftGame paramGiftGame)
  {
    this.b = paramActivity;
    this.c = paramGiftGame;
    this.a = ((DownloadManager)paramActivity.getSystemService("download"));
  }

  @TargetApi(11)
  private long a(Uri paramUri)
  {
    try
    {
      localRequest = new DownloadManager.Request(paramUri);
      if (localRequest == null)
      {
        e.a(this.b, "无法下载");
        return 0L;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      DownloadManager.Request localRequest;
      while (true)
      {
        localIllegalArgumentException.printStackTrace();
        localRequest = null;
      }
      localRequest.setTitle(this.c.getName());
      if (a.g())
      {
        localRequest.allowScanningByMediaScanner();
        localRequest.setNotificationVisibility(1);
      }
      localRequest.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, a.N(this.c.getAndroidLink()));
      try
      {
        long l = this.a.enqueue(localRequest);
        return l;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return 0L;
  }

  public static void a(Activity paramActivity, GiftGame paramGiftGame)
  {
    if (paramGiftGame == null)
      return;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramGiftGame);
    a(paramActivity, localArrayList);
  }

  public static void a(Activity paramActivity, List<GiftGame> paramList)
  {
    if (paramList.size() == 0);
    Cursor localCursor;
    do
    {
      return;
      DownloadManager localDownloadManager = (DownloadManager)paramActivity.getSystemService("download");
      HashMap localHashMap = new HashMap();
      localCursor = localDownloadManager.query(new DownloadManager.Query());
      if (localCursor != null)
        while (localCursor.moveToNext())
          localHashMap.put(localCursor.getString(localCursor.getColumnIndex("uri")), Integer.valueOf(localCursor.getPosition()));
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        GiftGame localGiftGame = (GiftGame)localIterator.next();
        String str1 = localGiftGame.getAndroidLink();
        if (a.j(paramActivity, localGiftGame.getAndroidPackageName()))
        {
          localGiftGame.setDownloadStatus(32);
          localGiftGame.setLocalFileUri(null);
        }
        else if (localHashMap.containsKey(str1))
        {
          localCursor.moveToPosition(((Integer)localHashMap.get(str1)).intValue());
          int i = localCursor.getInt(localCursor.getColumnIndex("status"));
          String str2 = localCursor.getString(localCursor.getColumnIndex("local_uri"));
          localGiftGame.setDownloadStatus(i);
          localGiftGame.setLocalFileUri(str2);
        }
        else
        {
          localGiftGame.setDownloadStatus(0);
          localGiftGame.setLocalFileUri(null);
        }
      }
    }
    while (localCursor == null);
    localCursor.close();
  }

  public final void a()
  {
    if (!a.d())
    {
      e.a(this.b, "sd卡未挂载");
      return;
    }
    this.b.sendBroadcast(new Intent("update_game_item_status"));
    MyApplication.a().i().add(this.c.get_id());
    String str = this.c.getAndroidLink();
    long l = a(Uri.parse(str));
    MyApplication.a().j().add(Long.valueOf(l));
    MyApplication.a().i().add(str);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.ao
 * JD-Core Version:    0.6.2
 */