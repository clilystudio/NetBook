package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class UserInfo$UserTodayTask
  implements Serializable
{
  private static final long serialVersionUID = 327955040176412798L;
  private boolean comment;
  private boolean launch;
  private boolean post;
  private boolean share;
  private boolean share_book;
  private boolean vote;

  public boolean isComment()
  {
    return this.comment;
  }

  public boolean isLaunch()
  {
    return this.launch;
  }

  public boolean isPost()
  {
    return this.post;
  }

  public boolean isShare()
  {
    return this.share;
  }

  public boolean isShare_book()
  {
    return this.share_book;
  }

  public boolean isVote()
  {
    return this.vote;
  }

  public void setComment(boolean paramBoolean)
  {
    this.comment = paramBoolean;
  }

  public void setLaunch(boolean paramBoolean)
  {
    this.launch = paramBoolean;
  }

  public void setPost(boolean paramBoolean)
  {
    this.post = paramBoolean;
  }

  public void setShare(boolean paramBoolean)
  {
    this.share = paramBoolean;
  }

  public void setShare_book(boolean paramBoolean)
  {
    this.share_book = paramBoolean;
  }

  public void setVote(boolean paramBoolean)
  {
    this.vote = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UserInfo.UserTodayTask
 * JD-Core Version:    0.6.0
 */