package com.ushaqi.zhuishushenqi.model;

public class HotCommentRoot
{
  private PostComment[] comments;
  private boolean ok;

  public PostComment[] getComments()
  {
    return this.comments;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setComments(PostComment[] paramArrayOfPostComment)
  {
    this.comments = paramArrayOfPostComment;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.HotCommentRoot
 * JD-Core Version:    0.6.0
 */