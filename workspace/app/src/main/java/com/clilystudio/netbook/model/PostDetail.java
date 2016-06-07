package com.clilystudio.netbook.model;

public class PostDetail
{
  private boolean ok;
  private Post post;

  public Post getPost()
  {
    return this.post;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setPost(Post paramPost)
  {
    this.post = paramPost;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PostDetail
 * JD-Core Version:    0.6.0
 */