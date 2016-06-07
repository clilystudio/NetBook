package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.model.Toc;

public class MixTocRoot
{
  private Toc mixToc;
  private boolean ok;

  public Toc getMixToc()
  {
    return this.mixToc;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setMixToc(Toc paramToc)
  {
    this.mixToc = paramToc;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.mixtoc.MixTocRoot
 * JD-Core Version:    0.6.0
 */