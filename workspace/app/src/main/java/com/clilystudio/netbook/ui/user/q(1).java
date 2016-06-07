package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import java.io.IOException;

final class q extends c<String, ChangeGenderRoot>
{
  public q(ModifyUserInfoActivity paramModifyUserInfoActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
  }

  private ChangeGenderRoot a(String[] paramArrayOfString)
  {
    Account localAccount = am.e();
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.q
 * JD-Core Version:    0.6.0
 */