package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.db.BookFile;

public class ResponseBookFile
{
  private String name;
  private String size;

  public ResponseBookFile(BookFile paramBookFile)
  {
    this.size = paramBookFile.getSize();
    this.name = paramBookFile.getName();
  }

  public String getName()
  {
    return this.name;
  }

  public String getSize()
  {
    return this.size;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setSize(String paramString)
  {
    this.size = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ResponseBookFile
 * JD-Core Version:    0.6.2
 */