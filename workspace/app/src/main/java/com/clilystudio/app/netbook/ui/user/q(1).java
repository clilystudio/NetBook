package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ChangeGenderRoot;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.io.IOException;

final class q extends c<String, ChangeGenderRoot>
{
  public q(ModifyUserInfoActivity paramModifyUserInfoActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
  }

  private ChangeGenderRoot a(String[] paramArrayOfString)
  {
    Account localAccount = am_CommonUtils.e();
    if (localAccount != null)
      try
      {
        ChangeGenderRoot localChangeGenderRoot = b.b().v(localAccount.getToken(), paramArrayOfString[0]);
        return localChangeGenderRoot;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.q
 * JD-Core Version:    0.6.2
 */