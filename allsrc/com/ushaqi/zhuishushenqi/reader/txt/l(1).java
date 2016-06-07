package com.ushaqi.zhuishushenqi.reader.txt;

import com.ushaqi.zhuishushenqi.reader.AutoReaderTextView;
import com.ushaqi.zhuishushenqi.reader.PagerWidget;
import com.ushaqi.zhuishushenqi.reader.bZ;
import com.ushaqi.zhuishushenqi.reader.dc;
import com.ushaqi.zhuishushenqi.reader.n;
import com.ushaqi.zhuishushenqi.reader.o;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.l
 * JD-Core Version:    0.6.0
 */