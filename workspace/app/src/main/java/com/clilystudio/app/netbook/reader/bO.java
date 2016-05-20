package com.clilystudio.app.netbook.reader;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;

final class bO
  implements CompoundButton.OnCheckedChangeListener
{
  bO(ReaderOptionActivity paramReaderOptionActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.b(this.a, "key_enable_imersive_mode", paramBoolean);
    b.a(this.a, "imersive_switcher");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bO
 * JD-Core Version:    0.6.2
 */