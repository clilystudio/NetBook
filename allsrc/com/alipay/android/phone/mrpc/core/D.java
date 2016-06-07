package com.alipay.android.phone.mrpc.core;

import android.os.Looper;
import com.alipay.android.phone.mrpc.core.a.c;
import com.alipay.android.phone.mrpc.core.a.d;
import com.alipay.android.phone.mrpc.core.a.e;
import com.alipay.android.phone.mrpc.core.a.f;
import com.alipay.c.a.a.a.a;
import com.alipay.c.a.a.a.b;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class D
{
  private static final ThreadLocal<Object> a = new ThreadLocal();
  private static final ThreadLocal<Map<String, Object>> b = new ThreadLocal();
  private byte c = 0;
  private AtomicInteger d;
  private B e;

  public D(B paramB)
  {
    this.e = paramB;
    this.d = new AtomicInteger();
  }

  public final Object a(Method paramMethod, Object[] paramArrayOfObject)
  {
    boolean bool1 = true;
    if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper()));
    for (boolean bool2 = bool1; bool2; bool2 = false)
      throw new IllegalThreadStateException("can't in main thread call rpc .");
    a locala = (a)paramMethod.getAnnotation(a.class);
    if (paramMethod.getAnnotation(b.class) != null);
    Type localType;
    while (true)
    {
      localType = paramMethod.getGenericReturnType();
      paramMethod.getAnnotations();
      a.set(null);
      b.set(null);
      if (locala != null)
        break;
      throw new IllegalStateException("OperationType must be set.");
      bool1 = false;
    }
    String str = locala.a();
    int i = this.d.incrementAndGet();
    try
    {
      e locale = new e(i, str, paramArrayOfObject);
      if (b.get() != null)
        locale.a(b.get());
      byte[] arrayOfByte1 = locale.a();
      byte[] arrayOfByte2 = (byte[])new o(this.e.a(), paramMethod, i, str, arrayOfByte1, bool1).a();
      b.set(null);
      Object localObject = new d(localType, arrayOfByte2).a();
      if (localType != Void.TYPE)
        a.set(localObject);
      return a.get();
    }
    catch (RpcException localRpcException)
    {
      localRpcException.setOperationType(str);
    }
    throw localRpcException;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.D
 * JD-Core Version:    0.6.0
 */