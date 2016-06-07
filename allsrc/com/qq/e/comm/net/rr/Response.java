package com.qq.e.comm.net.rr;

import java.io.InputStream;

public abstract interface Response
{
  public abstract void close();

  public abstract byte[] getBytesContent();

  public abstract int getStatusCode();

  public abstract InputStream getStreamContent();

  public abstract String getStringContent();

  public abstract String getStringContent(String paramString);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.rr.Response
 * JD-Core Version:    0.6.0
 */