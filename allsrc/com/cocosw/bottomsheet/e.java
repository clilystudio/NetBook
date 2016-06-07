package com.cocosw.bottomsheet;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;

final class e
  implements AdapterView.OnItemClickListener
{
  e(a parama)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (g.d(a.c(this.a)) != null)
      g.d(a.c(this.a)).onClick(this.a, h.c((h)a.d(this.a).getItem(paramInt)));
    this.a.dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.cocosw.bottomsheet.e
 * JD-Core Version:    0.6.0
 */