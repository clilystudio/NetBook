package com.clilystudio.app.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.squareup.a.b;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.v;

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
      am_CommonUtils.c(ReaderMixActivity.b(this.a), 5);
      i.a().c(new v(1));
      ReaderMixActivity.a(this.a, "MIX_TOC_ID");
    }
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bB
 * JD-Core Version:    0.6.2
 */