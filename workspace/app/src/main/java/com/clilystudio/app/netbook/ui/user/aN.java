package com.clilystudio.app.netbook.ui.user;

import android.support.design.widget.am;
import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ResultStatus;
import com.clilystudio.app.netbook.util.am_CommonUtils;

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
      ResultStatus localResultStatus = b.b().W(am_CommonUtils.e().getToken());
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aN
 * JD-Core Version:    0.6.2
 */