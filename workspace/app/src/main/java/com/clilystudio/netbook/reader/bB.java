package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.squareup.a.b;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bB
  implements View.OnClickListener
{
  bB(ReaderMixActivity paramReaderMixActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (!"mix".equals(ReaderMixActivity.a(this.a)))
    {
      MyApplication.a().c(ReaderMixActivity.b(this.a));
      am.c(ReaderMixActivity.b(this.a), 5);
      i.a().c(new v(1));
      ReaderMixActivity.a(this.a, "MIX_TOC_ID");
    }
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bB
 * JD-Core Version:    0.6.0
 */