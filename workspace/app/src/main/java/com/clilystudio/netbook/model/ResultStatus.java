package com.clilystudio.netbook.model;

public class ResultStatus
{
  private String code;
  private String msg;
  private boolean ok;

  public String getCode()
  {
    return this.code;
  }

  public String getMsg()
  {
    return this.msg;
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ResultStatus
 * JD-Core Version:    0.6.0
 */