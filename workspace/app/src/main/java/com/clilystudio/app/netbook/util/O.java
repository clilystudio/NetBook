package com.clilystudio.app.netbook.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class O
  implements DialogInterface.OnClickListener
{
  O(N paramN, boolean paramBoolean, String paramString1, String paramString2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = String.valueOf(paramInt + 1);
    e.a(N.a(this.d), 2131034431);
    if (!this.a)
    {
      if (this.b == null)
      {
        new an(this.c, str).start();
        return;
      }
      new ao(this.c, this.b, str).start();
      return;
    }
    if (this.b == null)
    {
      new ap(this.c, str).start();
      return;
    }
    new aq(this.c, this.b, str).start();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.O
 * JD-Core Version:    0.6.2
 */