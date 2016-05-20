package com.clilystudio.app.netbook.reader.txt;

import com.clilystudio.app.netbook.reader.AutoReaderTextView;
import com.clilystudio.app.netbook.reader.PagerWidget;
import com.clilystudio.app.netbook.reader.bZ;
import com.clilystudio.app.netbook.reader.dc;
import com.clilystudio.app.netbook.reader.n;
import com.clilystudio.app.netbook.reader.o;

final class l
  implements dc
{
  l(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void a()
  {
    ReaderTxtActivity.a(this.a);
    ReaderTxtActivity.a(this.a, 1);
    ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
    ReaderTxtActivity.f(this.a).setTotalHeight(ReaderTxtActivity.d(this.a)[ReaderTxtActivity.e(this.a)].d());
    if (ReaderTxtActivity.g(this.a).i())
      ReaderTxtActivity.f(this.a).setText(ReaderTxtActivity.h(this.a).a(this.a));
    while (true)
    {
      ReaderTxtActivity.f(this.a).f();
      ReaderTxtActivity.i(this.a);
      return;
      ReaderTxtActivity.f(this.a).setText(ReaderTxtActivity.h(this.a).c());
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.l
 * JD-Core Version:    0.6.2
 */