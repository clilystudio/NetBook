package com.activeandroid.util;

import java.io.InputStream;

public class Tokenizer
{
  private int mCurrent;
  private boolean mIsNext;
  private final InputStream mStream;

  public Tokenizer(InputStream paramInputStream)
  {
    this.mStream = paramInputStream;
  }

  public boolean hasNext()
  {
    if (!this.mIsNext)
    {
      this.mIsNext = true;
      this.mCurrent = this.mStream.read();
    }
    return this.mCurrent != -1;
  }

  public int next()
  {
    if (!this.mIsNext)
      this.mCurrent = this.mStream.read();
    this.mIsNext = false;
    return this.mCurrent;
  }

  public boolean skip(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    do
      return false;
    while (paramString.charAt(0) != this.mCurrent);
    int i = paramString.length();
    this.mStream.mark(i - 1);
    for (int j = 1; j < i; j++)
    {
      if (this.mStream.read() == paramString.charAt(j))
        continue;
      this.mStream.reset();
      return false;
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.Tokenizer
 * JD-Core Version:    0.6.0
 */