package com.clilystudio.netbook.reader;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class cW
  implements CompoundButton.OnCheckedChangeListener
{
  cW(SettingWidget paramSettingWidget)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    SettingWidget.b(this.a).b(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cW
 * JD-Core Version:    0.6.0
 */