package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Protocol;
import java.net.ProtocolException;

public final class z
{
  public final Protocol a;
  public final int b;
  public final String c;

  private z(Protocol paramProtocol, int paramInt, String paramString)
  {
    this.a = paramProtocol;
    this.b = paramInt;
    this.c = paramString;
  }

  public static z a(String paramString)
  {
    int i = 9;
    int m;
    Protocol localProtocol;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < i) || (paramString.charAt(8) != ' '))
        throw new ProtocolException("Unexpected status line: " + paramString);
      m = '￐' + paramString.charAt(7);
      if (m == 0)
        localProtocol = Protocol.HTTP_1_0;
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (m == 1)
      {
        localProtocol = Protocol.HTTP_1_1;
        continue;
      }
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (paramString.startsWith("ICY "))
      {
        localProtocol = Protocol.HTTP_1_0;
        i = 4;
        continue;
      }
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    int j = i + 3;
    int k;
    try
    {
      k = Integer.parseInt(paramString.substring(i, j));
      if (paramString.length() > i + 3)
        if (paramString.charAt(i + 3) != ' ')
          throw new ProtocolException("Unexpected status line: " + paramString);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    for (String str = paramString.substring(i + 4); ; str = "")
      return new z(localProtocol, k, str);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.a == Protocol.HTTP_1_0);
    for (String str = "HTTP/1.0"; ; str = "HTTP/1.1")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(' ').append(this.b);
      if (this.c != null)
        localStringBuilder.append(' ').append(this.c);
      return localStringBuilder.toString();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.z
 * JD-Core Version:    0.6.0
 */