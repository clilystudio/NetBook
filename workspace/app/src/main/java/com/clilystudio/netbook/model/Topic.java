package com.clilystudio.netbook.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.Topic
 * JD-Core Version:    0.6.0
 */