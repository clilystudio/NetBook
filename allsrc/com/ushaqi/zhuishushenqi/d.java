package com.ushaqi.zhuishushenqi;

import android.content.Context;
import android.content.Intent;
import java.io.Serializable;

public final class d
{
  private final Intent a = new Intent();

  public final Intent a()
  {
    return this.a;
  }

  public final d a(Context paramContext, Class<?> paramClass)
  {
    this.a.setClass(paramContext, paramClass);
    return this;
  }

  public final d a(String paramString, int paramInt)
  {
    this.a.putExtra(paramString, paramInt);
    return this;
  }

  public final d a(String paramString, Serializable paramSerializable)
  {
    this.a.putExtra(paramString, paramSerializable);
    return this;
  }

  public final d a(String paramString1, String paramString2)
  {
    this.a.putExtra(paramString1, paramString2);
    return this;
  }

  public final d a(String paramString, String[] paramArrayOfString)
  {
    this.a.putExtra(paramString, paramArrayOfString);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.d
 * JD-Core Version:    0.6.0
 */