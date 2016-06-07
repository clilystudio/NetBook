package com.alipay.sdk.g;

import android.app.Activity;
import android.app.ProgressDialog;

public final class a
{
  Activity a;
  ProgressDialog b;

  public a(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public final boolean a()
  {
    return (this.b != null) && (this.b.isShowing());
  }

  public final void b()
  {
    c();
    b localb = new b(this, "正在加载");
    if ((this.a != null) && (!this.a.isFinishing()))
      this.a.runOnUiThread(localb);
  }

  public final void c()
  {
    c localc = new c(this);
    if ((this.a != null) && (!this.a.isFinishing()))
      this.a.runOnUiThread(localc);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.g.a
 * JD-Core Version:    0.6.0
 */