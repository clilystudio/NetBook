package com.clilystudio.netbook.model;

import java.io.Serializable;

public abstract interface ReplyeeInfo extends Serializable
{
  public abstract Author getAuthor();

  public abstract String getCommentId();

  public abstract int getFloor();

  public abstract void setAuthor(Author paramAuthor);

  public abstract void setCommentId(String paramString);

  public abstract void setFloor(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ReplyeeInfo
 * JD-Core Version:    0.6.0
 */