package com.alipay.android.phone.mrpc.core;

import com.alipay.android.phone.mrpc.core.a.c;
import java.lang.reflect.Method;

public abstract class a
  implements c
{
  protected byte[] a;
  protected String b;
  protected int c;
  protected String d;
  protected boolean e;

  public a(Method paramMethod, int paramInt, String paramString1, byte[] paramArrayOfByte, String paramString2, boolean paramBoolean)
  {
    this.c = paramInt;
    this.b = paramString1;
    this.a = paramArrayOfByte;
    this.d = paramString2;
    this.e = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.a
 * JD-Core Version:    0.6.0
 */