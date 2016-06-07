package com.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class i
  implements Runnable
{
  i(Context paramContext)
  {
  }

  public final void run()
  {
    Toast.makeText(this.a, "Please copy all resources (res/) from SDK to your project!", 1).show();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.i
 * JD-Core Version:    0.6.0
 */