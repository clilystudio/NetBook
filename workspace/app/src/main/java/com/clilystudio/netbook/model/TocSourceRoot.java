package com.clilystudio.netbook.model;

import java.io.Serializable;

public class TocSourceRoot
  implements Serializable
{
  private static final long serialVersionUID = -1302208452678963962L;
  private boolean ok;
  private TocSource[] sources;

  public TocSource[] getSources()
  {
    return this.sources;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setSources(TocSource[] paramArrayOfTocSource)
  {
    this.sources = paramArrayOfTocSource;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.TocSourceRoot
 * JD-Core Version:    0.6.0
 */