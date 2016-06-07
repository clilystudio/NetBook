package com.squareup.okhttp.internal.http;

import java.io.IOException;

public final class RequestException extends Exception
{
  public RequestException(IOException paramIOException)
  {
    super(paramIOException);
  }

  public final IOException getCause()
  {
    return (IOException)super.getCause();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.RequestException
 * JD-Core Version:    0.6.0
 */