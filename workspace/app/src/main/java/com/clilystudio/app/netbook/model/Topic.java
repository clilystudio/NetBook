package com.clilystudio.app.netbook.model;

public class Topic
{
  private boolean ok;
  private TopicPost[] posts;

  public TopicPost[] getPosts()
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

  public void setPosts(TopicPost[] paramArrayOfTopicPost)
  {
    this.posts = paramArrayOfTopicPost;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.Topic
 * JD-Core Version:    0.6.2
 */