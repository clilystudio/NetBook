package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class as extends e<String, Void, ResultStatus>
{
  private as(PostUsefulView paramPostUsefulView)
  {
  }

  private static ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ResultStatus localResultStatus = b.b().m(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
      return localResultStatus;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.as
 * JD-Core Version:    0.6.0
 */