package com.ushaqi.zhuishushenqi.ui.user;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ResultStatus;
import java.io.IOException;

final class aN extends e<String, Void, ResultStatus>
{
  private aN(UserTaskActivity paramUserTaskActivity)
  {
  }

  private ResultStatus a()
  {
    try
    {
      ResultStatus localResultStatus = b.b().W(am.e().getToken());
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aN
 * JD-Core Version:    0.6.0
 */