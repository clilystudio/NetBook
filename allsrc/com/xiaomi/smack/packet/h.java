package com.xiaomi.smack.packet;

public final class h
{
  private String a;

  public h(String paramString)
  {
    this.a = paramString;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("stream:error (").append(this.a).append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.h
 * JD-Core Version:    0.6.0
 */