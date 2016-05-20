package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.y
 * JD-Core Version:    0.6.2
 */