package com.ushaqi.zhuishushenqi.reader.txt;

import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechSynthesizer;
import com.ushaqi.zhuishushenqi.reader.PagerWidget;
import com.ushaqi.zhuishushenqi.reader.cn;

final class w
  implements cn
{
  w(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void a()
  {
    ReaderTxtActivity.a(this.a, 2);
    ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
    ReaderTxtActivity.j(this.a);
    ReaderTxtActivity.k(this.a);
  }

  public final void a(int paramInt)
  {
    ReaderTxtActivity.l(this.a).setParameter("speed", paramInt);
    a.b(this.a, "speech_speed", paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    ReaderTxtActivity.l(this.a).stopSpeaking();
    ReaderTxtActivity.a(this.a, 0);
    ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
    ReaderTxtActivity.m(this.a);
    if (paramBoolean)
    {
      ReaderTxtActivity.a(this.a);
      ReaderTxtActivity.b(this.a, 0);
      ReaderTxtActivity.c(this.a, 0);
      ReaderTxtActivity.d(this.a, 0);
      ReaderTxtActivity.n(this.a);
    }
  }

  public final void b()
  {
    ReaderTxtActivity.l(this.a).pauseSpeaking();
    ReaderTxtActivity.a(this.a, true);
  }

  public final void c()
  {
    ReaderTxtActivity.l(this.a).resumeSpeaking();
  }

  public final void d()
  {
    this.a.e();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.w
 * JD-Core Version:    0.6.0
 */