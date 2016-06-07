package com.google.gson.internal;

class Streams$AppendableWriter$CurrentWrite
  implements CharSequence
{
  char[] chars;

  public char charAt(int paramInt)
  {
    return this.chars[paramInt];
  }

  public int length()
  {
    return this.chars.length;
  }

  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return new String(this.chars, paramInt1, paramInt2 - paramInt1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.Streams.AppendableWriter.CurrentWrite
 * JD-Core Version:    0.6.0
 */