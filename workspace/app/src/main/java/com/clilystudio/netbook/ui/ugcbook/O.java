package com.clilystudio.netbook.ui.ugcbook;

import android.support.design.widget.am;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
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
      Account localAccount = am.a(this.a);
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.O
 * JD-Core Version:    0.6.0
 */