package com.umeng.update.net;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;

public class i
{
  private static final String b = i.class.getName();
  final Messenger a = new Messenger(new l(this));
  private Context c;
  private u d;
  private Messenger e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private ServiceConnection n = new j(this);

  public i(Context paramContext, String paramString1, String paramString2, String paramString3, u paramu)
  {
    this.c = paramContext.getApplicationContext();
    this.f = paramString1;
    this.g = paramString2;
    this.h = paramString3;
    this.d = paramu;
  }

  public final void a()
  {
    Intent localIntent = new Intent(this.c, DownloadingService.class);
    this.c.bindService(localIntent, this.n, 1);
    this.c.startService(new Intent(this.c, DownloadingService.class));
  }

  public final void a(String paramString)
  {
    this.i = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.k = true;
  }

  public final void b(String paramString)
  {
    this.j = paramString;
  }

  public final void b(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public final void c(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.i
 * JD-Core Version:    0.6.0
 */