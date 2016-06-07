package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.design.widget.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;

final class O
  implements DialogInterface.OnClickListener
{
  O(N paramN)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    S localS = new S(this.a.c);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = am.e().getToken();
    arrayOfString[1] = this.a.b.get_id();
    localS.execute(arrayOfString);
    G.a(this.a.c, this.a.a.q);
    G.d(this.a.c, this.a.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.O
 * JD-Core Version:    0.6.0
 */