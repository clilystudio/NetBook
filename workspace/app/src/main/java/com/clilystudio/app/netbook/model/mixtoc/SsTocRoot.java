package com.clilystudio.app.netbook.model.mixtoc;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.SsTocRoot
 * JD-Core Version:    0.6.2
 */