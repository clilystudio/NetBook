package com.clilystudio.netbook.umeng.update.net;

import android.app.NotificationManager;
import android.content.Context;
import android.os.AsyncTask;

final class t extends AsyncTask<String, Void, Integer>
{
  private int a;
  private String b;
  private k c;
  private Context d;
  private NotificationManager e;

  public t(p paramp, Context paramContext, int paramInt, k paramk, String paramString)
  {
    this.d = paramContext.getApplicationContext();
    this.e = ((NotificationManager)this.d.getSystemService("notification"));
    this.a = paramInt;
    this.c = paramk;
    this.b = paramString;
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.t
 * JD-Core Version:    0.6.0
 */