package com.ushaqi.zhuishushenqi.model;

import com.ushaqi.zhuishushenqi.db.BookFile;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.ResponseBookFile
 * JD-Core Version:    0.6.0
 */