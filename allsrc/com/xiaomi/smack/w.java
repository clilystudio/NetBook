package com.xiaomi.smack;

import com.xiaomi.smack.packet.h;
import com.xiaomi.smack.packet.i;
import java.io.PrintStream;
import java.io.PrintWriter;

public class w extends Exception
{
  private h a = null;
  private i b = null;
  private Throwable c = null;

  public w()
  {
  }

  public w(h paramh)
  {
    this.a = paramh;
  }

  public w(String paramString)
  {
    super(paramString);
  }

  public w(String paramString, i parami)
  {
    super(paramString);
    this.b = parami;
  }

  public w(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.c = paramThrowable;
  }

  public w(Throwable paramThrowable)
  {
    this.c = paramThrowable;
  }

  public String getMessage()
  {
    String str = super.getMessage();
    if ((str == null) && (this.b != null))
      str = this.b.toString();
    do
      return str;
    while ((str != null) || (this.a == null));
    return this.a.toString();
  }

  public void printStackTrace()
  {
    printStackTrace(System.err);
  }

  public void printStackTrace(PrintStream paramPrintStream)
  {
    super.printStackTrace(paramPrintStream);
    if (this.c != null)
    {
      paramPrintStream.println("Nested Exception: ");
      this.c.printStackTrace(paramPrintStream);
    }
  }

  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    super.printStackTrace(paramPrintWriter);
    if (this.c != null)
    {
      paramPrintWriter.println("Nested Exception: ");
      this.c.printStackTrace(paramPrintWriter);
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = super.getMessage();
    if (str != null)
      localStringBuilder.append(str).append(": ");
    if (this.b != null)
      localStringBuilder.append(this.b);
    if (this.a != null)
      localStringBuilder.append(this.a);
    if (this.c != null)
      localStringBuilder.append("\n  -- caused by: ").append(this.c);
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.w
 * JD-Core Version:    0.6.0
 */