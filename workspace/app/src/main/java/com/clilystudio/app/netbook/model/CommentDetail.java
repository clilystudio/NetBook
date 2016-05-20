package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.CommentDetail
 * JD-Core Version:    0.6.2
 */