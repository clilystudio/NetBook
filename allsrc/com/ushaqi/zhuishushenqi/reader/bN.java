package com.ushaqi.zhuishushenqi.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.util.I;

final class bN
  implements CompoundButton.OnCheckedChangeListener
{
  bN(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.b(this.b, "auto_buy_chapter" + I.a, paramBoolean);
    ReaderOptionActivity.a(this.b, this.a, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bN
 * JD-Core Version:    0.6.0
 */