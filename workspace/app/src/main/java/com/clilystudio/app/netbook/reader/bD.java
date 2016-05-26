package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import android.view.View;

import com.squareup.a.b;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.v;

final class bD
  implements View.OnClickListener
{
  bD(ReaderMixActivity paramReaderMixActivity, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if (!this.a.equals(ReaderMixActivity.a(this.b)))
    {
      MyApplication.a_getInstance().c(ReaderMixActivity.b(this.b));
      am_CommonUtils.c_setReadMode(ReaderMixActivity.b(this.b), 9);
      i.a().c(new v(1));
      ReaderMixActivity.a(this.b, ReaderMixActivity.f(this.b).get_id());
    }
    this.b.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bD
 * JD-Core Version:    0.6.2
 */