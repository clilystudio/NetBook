package com.ushaqi.zhuishushenqi.model;

public class PostPublish
{
  private String _id;
  private String code;
  private String msg;
  private boolean ok;
  private String postId;

  public String getCode()
  {
    return this.code;
  }

  public String getMsg()
  {
    return this.msg;
  }

  public String getPostId()
  {
    return this.postId;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setPostId(String paramString)
  {
    this.postId = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.PostPublish
 * JD-Core Version:    0.6.0
 */