package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChangeGenderRoot;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.q
 * JD-Core Version:    0.6.0
 */