package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class K
  implements View.OnClickListener
{
  K(G paramG, Intent paramIntent)
  {
  }

  public final void onClick(View paramView)
  {
    G.a(this.b).startActivity(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.K
 * JD-Core Version:    0.6.0
 */