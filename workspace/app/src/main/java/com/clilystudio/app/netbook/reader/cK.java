package com.clilystudio.app.netbook.reader;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cK
 * JD-Core Version:    0.6.2
 */