package com.ushaqi.zhuishushenqi.event;

import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity.Source;

public final class t
{
  private final Account a;
  private AuthLoginActivity.Source b;

  public t(Account paramAccount)
  {
    this.a = paramAccount;
  }

  public final Account a()
  {
    return this.a;
  }

  public final void a(AuthLoginActivity.Source paramSource)
  {
    this.b = paramSource;
  }

  public final AuthLoginActivity.Source b()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.event.t
 * JD-Core Version:    0.6.0
 */