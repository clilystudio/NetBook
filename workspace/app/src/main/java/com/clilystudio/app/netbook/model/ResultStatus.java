package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ResultStatus
 * JD-Core Version:    0.6.2
 */