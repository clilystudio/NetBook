package com.clilystudio.netbook.reader;

public enum Reader$Type
{
  private int code;

  static
  {
    Type[] arrayOfType = new Type[2];
    arrayOfType[0] = CHAPTER;
    arrayOfType[1] = TOC;
    a = arrayOfType;
  }

  private Reader$Type(int paramInt)
  {
    this.code = paramInt;
  }

  public final ae getListener(Reader paramReader)
  {
    if (this.code == 0)
      return Reader.a(paramReader);
    return Reader.b(paramReader);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.Reader.Type
 * JD-Core Version:    0.6.0
 */