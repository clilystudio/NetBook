package com.umeng.update.net;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.design.widget.am;
import android.widget.RemoteViews;
import com.alipay.sdk.b.b;
import com.umeng.update.util.a;
import u.a.c;

final class r extends a
{
  public r(Context paramContext)
  {
    super(paramContext);
  }

  public final r a()
  {
    this.b.contentView.setViewVisibility(am.y(this.a), 8);
    this.b.contentView.setViewVisibility(am.z(this.a), 8);
    return this;
  }

  public final r a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setProgress(100, paramInt2, false);
    this.b.contentView.setProgressBar(am.w(this.a), 100, paramInt2, false);
    return this;
  }

  public final r a(PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
  {
    this.b.contentView.setOnClickPendingIntent(am.y(this.a), paramPendingIntent1);
    this.b.contentView.setViewVisibility(am.y(this.a), 0);
    this.b.contentView.setViewVisibility(am.z(this.a), 0);
    this.b.contentView.setOnClickPendingIntent(am.z(this.a), paramPendingIntent2);
    return this;
  }

  public final r a(RemoteViews paramRemoteViews)
  {
    this.b.contentView = paramRemoteViews;
    return this;
  }

  public final r a(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setContentText(paramCharSequence);
    this.b.contentView.setTextViewText(am.u(this.a), paramCharSequence);
    return this;
  }

  public final void a(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    if (Build.VERSION.SDK_INT >= 16)
      this.c.addAction(paramInt, paramString, paramPendingIntent);
  }

  public final r b()
  {
    int i = am.y(this.a);
    this.b.contentView.setTextViewText(i, this.a.getResources().getString(b.g(this.a.getApplicationContext())));
    this.b.contentView.setInt(i, "setBackgroundResource", c.a(this.a).b("umeng_common_gradient_green"));
    return this;
  }

  public final r b(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setContentTitle(paramCharSequence);
    this.b.contentView.setTextViewText(am.x(this.a), paramCharSequence);
    return this;
  }

  public final r c()
  {
    int i = am.y(this.a);
    this.b.contentView.setTextViewText(i, this.a.getResources().getString(b.f(this.a.getApplicationContext())));
    this.b.contentView.setInt(i, "setBackgroundResource", c.a(this.a).b("umeng_common_gradient_orange"));
    return this;
  }

  public final Notification d()
  {
    if (Build.VERSION.SDK_INT >= 16)
      return this.c.build();
    if (Build.VERSION.SDK_INT >= 14)
      return this.c.getNotification();
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.r
 * JD-Core Version:    0.6.0
 */