package com.ushaqi.zhuishushenqi.model;

public class CommentDetail
{
  private PostComment comment;
  private boolean ok;

  public PostComment getComment()
  {
    return this.comment;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setComment(PostComment paramPostComment)
  {
    this.comment = paramPostComment;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.CommentDetail
 * JD-Core Version:    0.6.0
 */