package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Root
  implements Serializable
{
  private static final long serialVersionUID = 6384383576696578173L;
  private String code;
  private boolean ok;

  public String getCode()
  {
    return this.code;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.Root
 * JD-Core Version:    0.6.0
 */