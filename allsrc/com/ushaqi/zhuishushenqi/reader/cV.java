package com.ushaqi.zhuishushenqi.reader;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cV
 * JD-Core Version:    0.6.0
 */