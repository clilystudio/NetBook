package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class UserInfo$BookListCount
  implements Serializable
{
  private static final long serialVersionUID = -3528347781783671315L;
  private int collected;
  private int posted;

  public int getCollected()
  {
    return this.collected;
  }

  public int getPosted()
  {
    return this.posted;
  }

  public void setCollected(int paramInt)
  {
    this.collected = paramInt;
  }

  public void setPosted(int paramInt)
  {
    this.posted = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UserInfo.BookListCount
 * JD-Core Version:    0.6.2
 */