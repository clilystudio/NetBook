package com.clilystudio.netbook.ui.home;

final class R
  implements Runnable
{
  R(HomeTransparentActivity paramHomeTransparentActivity)
  {
  }

  public final void run()
  {
    this.a.finish();
    this.a.overridePendingTransition(2130968606, 2130968607);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.R
 * JD-Core Version:    0.6.0
 */