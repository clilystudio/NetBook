package com.ximalaya.ting.android.opensdk.player;

import android.app.Notification;
import android.app.NotificationManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.RemoteViews;
import com.squareup.okhttp.I;
import com.squareup.okhttp.K;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import java.io.IOException;

class XmNotificationCreater$1
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
  }

  public void onResponse(I paramI)
  {
    if (paramI.c() == 200);
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(paramI.g().c());
      XmNotificationCreater.access$0(this.this$0).setImageViewBitmap(this.this$0.getResourceId("img_notifyIcon", "id"), localBitmap);
      this.val$manager.notify(this.val$notificationId, this.val$notification);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmNotificationCreater.1
 * JD-Core Version:    0.6.0
 */