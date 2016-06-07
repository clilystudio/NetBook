package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class U
  implements AdapterView.OnItemClickListener
{
  U(UGCGuideSelectBookActivity paramUGCGuideSelectBookActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.a(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.U
 * JD-Core Version:    0.6.0
 */