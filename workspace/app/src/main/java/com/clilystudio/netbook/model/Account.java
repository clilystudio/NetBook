package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Account
  implements Serializable
{
  private static final long serialVersionUID = 7268031855566891017L;
  private String code;
  private boolean ok;
  private String token;
  private User user;

  public String getCode()
  {
    return this.code;
  }

  public String getToken()
  {
    return this.token;
  }

  public User getUser()
  {
    return this.user;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setToken(String paramString)
  {
    this.token = paramString;
  }

  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.Account
 * JD-Core Version:    0.6.0
 */