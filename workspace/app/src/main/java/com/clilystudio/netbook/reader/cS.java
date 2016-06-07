package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;

final class cS
  implements View.OnClickListener
{
  cS(SettingWidget paramSettingWidget, dc paramdc)
  {
  }

  public final void onClick(View paramView)
  {
    b.a(this.b.getContext(), "auto_read_start");
    a.D(this.b.getContext());
    this.a.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cS
 * JD-Core Version:    0.6.0
 */