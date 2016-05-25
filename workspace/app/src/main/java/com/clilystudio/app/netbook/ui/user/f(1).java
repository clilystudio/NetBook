package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.f
 * JD-Core Version:    0.6.2
 */