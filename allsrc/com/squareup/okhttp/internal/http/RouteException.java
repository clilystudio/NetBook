package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class RouteException extends Exception
{
  private static final Method a;
  private IOException lastException;

  static
  {
    try
    {
      Method localMethod2 = Throwable.class.getDeclaredMethod("addSuppressed", new Class[] { Throwable.class });
      localMethod1 = localMethod2;
      a = localMethod1;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Method localMethod1 = null;
    }
  }

  public RouteException(IOException paramIOException)
  {
    super(paramIOException);
    this.lastException = paramIOException;
  }

  public final void addConnectException(IOException paramIOException)
  {
    IOException localIOException = this.lastException;
    if (a != null);
    try
    {
      a.invoke(paramIOException, new Object[] { localIOException });
      label27: this.lastException = paramIOException;
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      break label27;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      break label27;
    }
  }

  public final IOException getLastConnectException()
  {
    return this.lastException;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.RouteException
 * JD-Core Version:    0.6.0
 */