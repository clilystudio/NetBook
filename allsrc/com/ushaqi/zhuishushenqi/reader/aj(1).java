package com.ushaqi.zhuishushenqi.reader;

import com.arcsoft.hpay100.a.a;
import com.jeremyfeinstein.slidingmenu.lib.g;
import com.ushaqi.zhuishushenqi.util.UmengGameTracer;
import com.ushaqi.zhuishushenqi.util.UmengGameTracer.From;

final class aj
  implements g
{
  aj(ReaderActivity paramReaderActivity)
  {
  }

  public final void a()
  {
    ReaderActivity.a(this.a);
    ReaderActivity.b(this.a);
    ReaderActivity.c(this.a);
    this.a.a(ReaderActivity.d(this.a));
    a.q(this.a, "打开页尾");
    if ((ReaderActivity.e(this.a) != null) && (ReaderActivity.e(this.a).b() != null))
    {
      a.q(this.a, "页尾广告-" + ReaderActivity.e(this.a).b());
      new UmengGameTracer(this.a, UmengGameTracer.From.Reader).a(ReaderActivity.e(this.a).a());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.aj
 * JD-Core Version:    0.6.0
 */