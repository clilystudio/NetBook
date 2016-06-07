package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ResultStatus;

final class g extends c<String, ResultStatus>
{
  public g(AbsPostActivity paramAbsPostActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      ResultStatus localResultStatus = b.b().f(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3]);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.g
 * JD-Core Version:    0.6.0
 */