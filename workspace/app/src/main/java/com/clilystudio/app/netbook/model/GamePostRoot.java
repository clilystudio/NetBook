package com.clilystudio.app.netbook.model;

public class GamePostRoot
{
  private boolean ok;
  private GamePostRoot.GamePost[] posts;

  public GamePostRoot.GamePost[] getPosts()
  {
    return this.posts;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setPosts(GamePostRoot.GamePost[] paramArrayOfGamePost)
  {
    this.posts = paramArrayOfGamePost;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GamePostRoot
 * JD-Core Version:    0.6.2
 */