package com.clilystudio.app.netbook.model;

public class PostDetailComment
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.PostDetailComment
 * JD-Core Version:    0.6.2
 */