package com.clilystudio.app.netbook.reader;

import android.widget.CheckBox;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class cV
  implements SeekBar.OnSeekBarChangeListener
{
  cV(SettingWidget paramSettingWidget)
  {
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (paramInt < 15)
        paramInt = 15;
      SettingWidget.b(this.a).b(paramInt);
    }
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    SettingWidget.c(this.a).setChecked(false);
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cV
 * JD-Core Version:    0.6.2
 */