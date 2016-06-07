package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ResultStatus;

final class cp extends e<String, Void, ResultStatus>
{
  private String a;

  private cp(OtherUserActivity paramOtherUserActivity)
  {
  }

  private ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      this.a = paramArrayOfString[1];
      b.a();
      ResultStatus localResultStatus = b.b().h(paramArrayOfString[0], this.a);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cp
 * JD-Core Version:    0.6.0
 */