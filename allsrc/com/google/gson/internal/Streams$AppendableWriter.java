package com.google.gson.internal;

import java.io.Writer;

final class Streams$AppendableWriter extends Writer
{
  private final Appendable appendable;
  private final Streams.AppendableWriter.CurrentWrite currentWrite = new Streams.AppendableWriter.CurrentWrite();

  private Streams$AppendableWriter(Appendable paramAppendable)
  {
    this.appendable = paramAppendable;
  }

  public final void close()
  {
  }

  public final void flush()
  {
  }

  public final void write(int paramInt)
  {
    this.appendable.append((char)paramInt);
  }

  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.currentWrite.chars = paramArrayOfChar;
    this.appendable.append(this.currentWrite, paramInt1, paramInt1 + paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.Streams.AppendableWriter
 * JD-Core Version:    0.6.0
 */