package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ResultStatus;

final class h extends c<String, ResultStatus>
{
  public h(AbsPostActivity paramAbsPostActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      ResultStatus localResultStatus = b.b().j(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.h
 * JD-Core Version:    0.6.0
 */