package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ResultStatus;
import java.io.IOException;

final class y extends c<String, ResultStatus>
{
  public y(MyFavTopicFragment paramMyFavTopicFragment, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
  }

  private static ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ResultStatus localResultStatus = b.b().z(paramArrayOfString[0], paramArrayOfString[1]);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.y
 * JD-Core Version:    0.6.0
 */