package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cW
 * JD-Core Version:    0.6.2
 */