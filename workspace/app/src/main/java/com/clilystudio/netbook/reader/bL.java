package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.j;

final class bL
  implements CompoundButton.OnCheckedChangeListener
{
  bL(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.b(this.b, "convert_t", paramBoolean);
    i.a().c(new j());
    ReaderOptionActivity.a(this.b, this.a, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bL
 * JD-Core Version:    0.6.0
 */