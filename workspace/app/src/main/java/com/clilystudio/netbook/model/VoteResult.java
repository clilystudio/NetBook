package com.clilystudio.netbook.model;

public class VoteResult
{
  private String code;
  private String msg;
  private boolean ok;
  private int selected;

  public String getCode()
  {
    return this.code;
  }

  public String getMsg()
  {
    return this.msg;
  }

  public int getSelected()
  {
    return this.selected;
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

  public void setSelected(int paramInt)
  {
    this.selected = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.VoteResult
 * JD-Core Version:    0.6.0
 */