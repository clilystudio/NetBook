package com.clilystudio.app.netbook.event;

import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity.Source;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.event.t
 * JD-Core Version:    0.6.2
 */