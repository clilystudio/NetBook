package com.ushaqi.zhuishushenqi.util;

import android.content.Context;
import android.widget.Toast;

final class ad
  implements Runnable
{
  ad(Context paramContext, String paramString, int paramInt)
  {
  }

  public final void run()
  {
    Toast.makeText(this.a, this.b, this.c).show();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.ad
 * JD-Core Version:    0.6.0
 */