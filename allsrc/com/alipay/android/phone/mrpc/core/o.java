package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public final class o extends a
{
  private l f;

  public o(l paraml, Method paramMethod, int paramInt, String paramString, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    super(paramMethod, paramInt, paramString, paramArrayOfByte, "application/x-www-form-urlencoded", paramBoolean);
    this.f = paraml;
  }

  public final Object a()
  {
    u localu = new u(this.f.a());
    localu.a(this.a);
    localu.a(this.d);
    localu.a(this.e);
    localu.a("id", String.valueOf(this.c));
    localu.a("operationType", this.b);
    localu.a("gzip", String.valueOf(this.f.d()));
    localu.a(new BasicHeader("uuid", UUID.randomUUID().toString()));
    this.f.c();
    if ((0 != 0) && (!null.isEmpty()))
    {
      Iterator localIterator = null.iterator();
      while (localIterator.hasNext())
        localu.a((Header)localIterator.next());
    }
    new StringBuilder("threadid = ").append(Thread.currentThread().getId()).append("; ").append(localu.toString());
    try
    {
      localz = (z)this.f.b().a(localu).get();
      if (localz == null)
        throw new RpcException(Integer.valueOf(9), "response is null");
    }
    catch (InterruptedException localInterruptedException)
    {
      z localz;
      throw new RpcException(Integer.valueOf(13), "", localInterruptedException);
      byte[] arrayOfByte = localz.b();
      return arrayOfByte;
    }
    catch (ExecutionException localExecutionException)
    {
      Throwable localThrowable = localExecutionException.getCause();
      if ((localThrowable != null) && ((localThrowable instanceof HttpException)))
      {
        HttpException localHttpException = (HttpException)localThrowable;
        int i = localHttpException.getCode();
        switch (i)
        {
        default:
        case 3:
        case 6:
        case 7:
        case 5:
        case 4:
        case 2:
        case 1:
        case 9:
        case 8:
        }
        while (true)
        {
          throw new RpcException(Integer.valueOf(i), localHttpException.getMsg());
          i = 4;
          continue;
          i = 7;
          continue;
          i = 8;
          continue;
          i = 6;
          continue;
          i = 5;
          continue;
          i = 3;
          continue;
          i = 2;
          continue;
          i = 16;
          continue;
          i = 15;
        }
      }
      throw new RpcException(Integer.valueOf(9), "", localExecutionException);
    }
    catch (CancellationException localCancellationException)
    {
    }
    throw new RpcException(Integer.valueOf(13), "", localCancellationException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.o
 * JD-Core Version:    0.6.0
 */