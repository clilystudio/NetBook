package com.clilystudio.netbook.model;

import com.clilystudio.netbook.db.BookFile;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ResponseBookFile
 * JD-Core Version:    0.6.0
 */