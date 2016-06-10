package com.clilystudio.netbook.umeng.update;

import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.content.Context;
import android.os.Build.VERSION;
import com.clilystudio.netbook.umeng.update.util.a;

final class p extends a
{
  private String d = "";
  private String e = "";

  public p(o paramo, Context paramContext)
  {
    super(paramContext);
  }

  public final Notification a()
  {
    if (Build.VERSION.SDK_INT >= 16)
      return this.c.build();
    if (Build.VERSION.SDK_INT >= 14)
      return this.c.getNotification();
    this.b.setLatestEventInfo(this.a, this.d, this.e, this.b.contentIntent);
    return this.b;
  }

  public final p a(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setContentText(paramCharSequence);
    this.e = paramCharSequence.toString();
    return this;
  }

  public final p b(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
      this.c.setContentTitle(paramCharSequence);
    this.d = paramCharSequence.toString();
    return this;
  }

  public final p c(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 16)
      this.c.setStyle(new Notification.BigTextStyle().bigText(paramCharSequence));
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.p
 * JD-Core Version:    0.6.0
 */