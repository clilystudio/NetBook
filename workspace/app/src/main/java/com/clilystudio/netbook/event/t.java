package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.user.AuthLoginActivity.Source;

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
 * Qualified Name:     com.clilystudio.netbook.event.t
 * JD-Core Version:    0.6.0
 */