package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

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
 * Qualified Name:     com.clilystudio.netbook.reader.cK
 * JD-Core Version:    0.6.0
 */