package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.g
 * JD-Core Version:    0.6.2
 */