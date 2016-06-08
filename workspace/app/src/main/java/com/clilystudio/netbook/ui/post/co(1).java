package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class co extends e<String, Void, ResultStatus>
{
  private String a;

  private co(OtherUserActivity paramOtherUserActivity)
  {
  }

  private ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      this.a = paramArrayOfString[1];
      b.a();
      ResultStatus localResultStatus = b.b().i(paramArrayOfString[0], this.a);
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.co
 * JD-Core Version:    0.6.0
 */