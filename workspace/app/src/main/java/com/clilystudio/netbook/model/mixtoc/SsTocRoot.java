package com.clilystudio.netbook.model.mixtoc;

public class SsTocRoot
{
  private String resourceid;
  private SsTocRow[] rows;

  public String getResourceid()
  {
    return this.resourceid;
  }

  public SsTocRow[] getRows()
  {
    return this.rows;
  }

  public void setResourceid(String paramString)
  {
    this.resourceid = paramString;
  }

  public void setRows(SsTocRow[] paramArrayOfSsTocRow)
  {
    this.rows = paramArrayOfSsTocRow;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.mixtoc.SsTocRoot
 * JD-Core Version:    0.6.0
 */