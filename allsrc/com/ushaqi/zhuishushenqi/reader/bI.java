package com.ushaqi.zhuishushenqi.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.arcsoft.hpay100.a.a;

final class bI
  implements CompoundButton.OnCheckedChangeListener
{
  bI(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.b(this.b, "volume_keys_flip", paramBoolean);
    ReaderOptionActivity.a(this.b, this.a, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bI
 * JD-Core Version:    0.6.0
 */