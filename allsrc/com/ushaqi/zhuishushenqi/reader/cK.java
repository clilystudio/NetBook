package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;

final class cK extends c<String, String>
{
  private int a;

  public cK(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
    this.a = paramInt;
  }

  private String a(String[] paramArrayOfString)
  {
    try
    {
      String str = b.b().b(paramArrayOfString[0], this.a);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cK
 * JD-Core Version:    0.6.0
 */