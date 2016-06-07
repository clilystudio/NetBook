package com.ushaqi.zhuishushenqi.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.arcsoft.hpay100.a.a;

final class az
  implements CompoundButton.OnCheckedChangeListener
{
  az(SettingCheckBox paramSettingCheckBox)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.b(this.a.getContext(), SettingCheckBox.a(this.a), paramBoolean);
    if (paramBoolean)
    {
      paramCompoundButton.setContentDescription("已开启");
      return;
    }
    paramCompoundButton.setContentDescription("已关闭");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.az
 * JD-Core Version:    0.6.0
 */