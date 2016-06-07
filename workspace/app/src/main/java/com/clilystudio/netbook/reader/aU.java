package com.clilystudio.netbook.reader;

import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechSynthesizer;

final class aU
  implements cn
{
  aU(ReaderActivity paramReaderActivity)
  {
  }

  public final void a()
  {
    ReaderActivity.a(this.a, 2);
    ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
    ReaderActivity.o(this.a);
    ReaderActivity.p(this.a);
  }

  public final void a(int paramInt)
  {
    ReaderActivity.q(this.a).setParameter("speed", paramInt);
    a.b(this.a, "speech_speed", paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    ReaderActivity.q(this.a).stopSpeaking();
    ReaderActivity.a(this.a, 0);
    ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
    ReaderActivity.r(this.a);
    if (paramBoolean)
    {
      ReaderActivity.f(this.a);
      ReaderActivity.b(this.a, 0);
      ReaderActivity.c(this.a, 0);
      ReaderActivity.d(this.a, 0);
      ReaderActivity.s(this.a);
    }
  }

  public final void b()
  {
    ReaderActivity.q(this.a).pauseSpeaking();
    ReaderActivity.a(this.a, true);
  }

  public final void c()
  {
    ReaderActivity.q(this.a).resumeSpeaking();
  }

  public final void d()
  {
    this.a.e();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.aU
 * JD-Core Version:    0.6.0
 */