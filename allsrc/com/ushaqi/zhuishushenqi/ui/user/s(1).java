package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChangeNickNameRoot;
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
    Account localAccount = am.e();
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.s
 * JD-Core Version:    0.6.0
 */