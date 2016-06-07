package com.iflytek.cloud.a.a;

import android.text.TextUtils;
import com.iflytek.speech.ISpeechModule;

public abstract class a
{
  protected com.iflytek.cloud.b.a b = new com.iflytek.cloud.b.a();

  protected a.a a(String paramString, ISpeechModule paramISpeechModule)
  {
    return a.a.b;
  }

  public String getParameter(String paramString)
  {
    if ("params".equals(paramString))
      return this.b.toString();
    return this.b.d(paramString);
  }

  public boolean setParameter(com.iflytek.cloud.b.a parama)
  {
    this.b = parama.b();
    return true;
  }

  public boolean setParameter(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return false;
    if (paramString1.equals("params"))
    {
      if (TextUtils.isEmpty(paramString2))
      {
        this.b.a();
        return true;
      }
      this.b.b(paramString2);
      return true;
    }
    if (TextUtils.isEmpty(paramString2))
      return this.b.c(paramString1).booleanValue();
    this.b.a(paramString1, paramString2);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.a.a.a
 * JD-Core Version:    0.6.0
 */