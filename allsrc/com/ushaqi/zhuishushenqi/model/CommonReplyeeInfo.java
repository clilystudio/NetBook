package com.ushaqi.zhuishushenqi.model;

public class CommonReplyeeInfo
  implements ReplyeeInfo
{
  private String _id;
  private Author author;
  private int floor;

  public CommonReplyeeInfo()
  {
  }

  public CommonReplyeeInfo(String paramString, Author paramAuthor, int paramInt)
  {
    this._id = paramString;
    this.author = paramAuthor;
    this.floor = paramInt;
  }

  public Author getAuthor()
  {
    return this.author;
  }

  public String getCommentId()
  {
    return this._id;
  }

  public int getFloor()
  {
    return this.floor;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setCommentId(String paramString)
  {
    this._id = paramString;
  }

  public void setFloor(int paramInt)
  {
    this.floor = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.CommonReplyeeInfo
 * JD-Core Version:    0.6.0
 */