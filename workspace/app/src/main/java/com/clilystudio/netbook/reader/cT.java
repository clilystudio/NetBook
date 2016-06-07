package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class cT
  implements View.OnClickListener
{
  cT(SettingWidget paramSettingWidget)
  {
  }

  public final void onClick(View paramView)
  {
    SettingWidget.b(this.a).d();
    SettingWidget.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cT
 * JD-Core Version:    0.6.0
 */