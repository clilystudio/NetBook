package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.am_CommonUtils;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ResultStatus;
import java.io.IOException;

final class O extends c<Void, ResultStatus>
{
  public O(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity)
  {
    super(paramUGCGuideEditBooksActivity, 2131034218);
  }

  private ResultStatus a()
  {
    try
    {
      Account localAccount = am_CommonUtils.a_isTaskStoped(this.a);
      if (localAccount != null)
      {
        if (UGCGuideEditBooksActivity.d(this.a))
          return b.b().c(UGCGuideEditBooksActivity.e(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f(this.a));
        if ((UGCGuideEditBooksActivity.f(this.a) != null) && (!UGCGuideEditBooksActivity.f(this.a).equals("")))
          return b.b().a(UGCGuideEditBooksActivity.g(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f(this.a));
        ResultStatus localResultStatus = b.b().a(UGCGuideEditBooksActivity.h(this.a), localAccount.getToken());
        return localResultStatus;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.O
 * JD-Core Version:    0.6.2
 */