package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;

public final class cM
{
  private cQ a;
  private Context b;
  private String[] c = new String[20];

  public cM(Context paramContext, cQ paramcQ)
  {
    this.a = paramcQ;
    this.b = paramContext;
  }

  public final boolean a(String paramString)
  {
    float f1 = com.arcsoft.hpay100.a.a.H(this.b);
    float f2 = com.arcsoft.hpay100.a.a.a(this.b, "BFD_RANDOM_RATE", 2.0F);
    if (f2 == 2.0F)
    {
      f2 = (float)Math.random();
      com.arcsoft.hpay100.a.a.b(this.b, "BFD_RANDOM_RATE", f2);
    }
    if (f1 > f2)
    {
      com.a.a.a.a(this.b, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94", com.arcsoft.hpay100.a.a.a(this.b, 20, paramString), new cN(this, paramString));
      return true;
    }
    new cO(this).b(new String[] { paramString });
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cM
 * JD-Core Version:    0.6.0
 */