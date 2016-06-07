package com.clilystudio.netbook.util;

import cn.sharesdk.framework.PlatformActionListener;

final class U
  implements Runnable
{
  U(PlatformActionListener paramPlatformActionListener)
  {
  }

  public final void run()
  {
    this.a.onComplete(null, 0, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.U
 * JD-Core Version:    0.6.0
 */