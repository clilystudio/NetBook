package com.github.kevinsawicki.http;

import java.io.IOException;

public class HttpRequest$HttpRequestException extends RuntimeException
{
  private static final long serialVersionUID = -1170466989781746231L;

  protected HttpRequest$HttpRequestException(IOException paramIOException)
  {
    super(paramIOException);
  }

  public IOException getCause()
  {
    return (IOException)super.getCause();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.HttpRequest.HttpRequestException
 * JD-Core Version:    0.6.0
 */