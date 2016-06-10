package com.clilystudio.netbook.umeng.update.util;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import java.lang.reflect.Field;

public class a
{
  protected Context a;
  protected Notification b = new Notification();
  protected Notification.Builder c;

  public a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    if (Build.VERSION.SDK_INT >= 14)
      this.c = new Notification.Builder(paramContext);
  }

  public final a a(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setSmallIcon(paramInt);
    this.b.icon = paramInt;
    return this;
  }

  public final a a(long paramLong)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setWhen(paramLong);
    this.b.when = paramLong;
    return this;
  }

  public final a a(PendingIntent paramPendingIntent)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setContentIntent(paramPendingIntent);
    this.b.contentIntent = paramPendingIntent;
    return this;
  }

  public final a a(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setOngoing(paramBoolean);
    if (paramBoolean)
    {
      Notification localNotification2 = this.b;
      localNotification2.flags = (0x2 | localNotification2.flags);
      return this;
    }
    Notification localNotification1 = this.b;
    localNotification1.flags = (0xFFFFFFFD & localNotification1.flags);
    return this;
  }

  public final a b(RemoteViews paramRemoteViews)
  {
    if ((Build.VERSION.SDK_INT < 16) && (Build.VERSION.SDK_INT >= 14))
      this.c.setContent(paramRemoteViews);
    this.b.contentView = paramRemoteViews;
    return this;
  }

  public final a b(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setAutoCancel(paramBoolean);
    if (paramBoolean)
    {
      Notification localNotification2 = this.b;
      localNotification2.flags = (0x10 | localNotification2.flags);
      return this;
    }
    Notification localNotification1 = this.b;
    localNotification1.flags = (0xFFFFFFEF & localNotification1.flags);
    return this;
  }

  public final a d(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setTicker(paramCharSequence);
    this.b.tickerText = paramCharSequence;
    return this;
  }

  public final void e()
  {
    if (Build.VERSION.SDK_INT >= 16);
    try
    {
      Field localField = Notification.Builder.class.getDeclaredField("mActions");
      localField.setAccessible(true);
      localField.set(this.c, localField.get(this.c).getClass().newInstance());
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.util.a
 * JD-Core Version:    0.6.0
 */