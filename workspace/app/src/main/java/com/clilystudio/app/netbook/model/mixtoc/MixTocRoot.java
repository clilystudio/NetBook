package com.clilystudio.app.netbook.model.mixtoc;

import com.clilystudio.app.netbook.model.Toc;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.MixTocRoot
 * JD-Core Version:    0.6.2
 */