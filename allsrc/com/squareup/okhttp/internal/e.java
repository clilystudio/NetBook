package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

final class e
  implements d
{
  public final InetAddress[] a(String paramString)
  {
    if (paramString == null)
      throw new UnknownHostException("host == null");
    return InetAddress.getAllByName(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.e
 * JD-Core Version:    0.6.0
 */