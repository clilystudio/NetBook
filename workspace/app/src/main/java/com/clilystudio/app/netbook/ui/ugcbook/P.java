package com.clilystudio.app.netbook.ui.ugcbook;

import android.support.design.widget.am;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ResultStatus;
import java.io.IOException;

final class P extends c<Void, ResultStatus>
{
  public P(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity)
  {
    super(paramUGCGuideEditBooksActivity, "正在保存到草稿箱...");
  }

  private ResultStatus a()
  {
    try
    {
      Account localAccount = am_CommonUtils.1this.a);
      if (localAccount != null)
      {
        if ((UGCGuideEditBooksActivity.f(this.a) != null) && (!UGCGuideEditBooksActivity.f(this.a).equals("")))
          return b.b().b(UGCGuideEditBooksActivity.l(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f(this.a));
        ResultStatus localResultStatus = b.b().b(UGCGuideEditBooksActivity.m(this.a), localAccount.getToken());
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.P
 * JD-Core Version:    0.6.2
 */