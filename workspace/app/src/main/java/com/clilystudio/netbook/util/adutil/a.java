package com.clilystudio.netbook.util.adutil;

import android.view.View;
import java.lang.reflect.InvocationHandler;

public abstract class a
  implements InvocationHandler
{
  AdSplashImp a;

  public a(AdSplashImp paramAdSplashImp)
  {
    this.a = paramAdSplashImp;
    this.a.a(this);
  }

  public abstract boolean a(View paramView);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.a
 * JD-Core Version:    0.6.0
 */