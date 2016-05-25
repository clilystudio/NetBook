package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ChangeNickNameRoot;

import java.io.IOException;

final class s extends c<String, ChangeNickNameRoot>
{
  private String a;

  public s(ModifyUserInfoActivity paramModifyUserInfoActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
  }

  private ChangeNickNameRoot a(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString[0];
    Account localAccount = am_CommonUtils.e();
    if (localAccount != null)
      try
      {
        ChangeNickNameRoot localChangeNickNameRoot = b.b().u(localAccount.getToken(), paramArrayOfString[0]);
        return localChangeNickNameRoot;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.s
 * JD-Core Version:    0.6.2
 */