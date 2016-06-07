package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;

final class f extends c<String, Account>
{
  public f(AuthLoginActivity paramAuthLoginActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034409);
  }

  private static Account a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Account localAccount = b.b().g(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
      return localAccount;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.f
 * JD-Core Version:    0.6.0
 */