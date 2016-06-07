package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

final class i extends g
{
  private final Method a;
  private final Method b;
  private final Method c;
  private final Class<?> d;
  private final Class<?> e;

  public i(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
  {
    this.a = paramMethod1;
    this.b = paramMethod2;
    this.c = paramMethod3;
    this.d = paramClass1;
    this.e = paramClass2;
  }

  public final void a(SSLSocket paramSSLSocket)
  {
    try
    {
      this.c.invoke(null, new Object[] { paramSSLSocket });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label19: break label19;
    }
  }

  public final void a(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      Protocol localProtocol = (Protocol)paramList.get(j);
      if (localProtocol == Protocol.HTTP_1_0)
        continue;
      localArrayList.add(localProtocol.toString());
    }
    try
    {
      ClassLoader localClassLoader = g.class.getClassLoader();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = this.d;
      arrayOfClass[1] = this.e;
      Object localObject = Proxy.newProxyInstance(localClassLoader, arrayOfClass, new j(localArrayList));
      this.a.invoke(null, new Object[] { paramSSLSocket, localObject });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label145: break label145;
    }
  }

  public final String b(SSLSocket paramSSLSocket)
  {
    try
    {
      j localj = (j)Proxy.getInvocationHandler(this.b.invoke(null, new Object[] { paramSSLSocket }));
      if ((!j.a(localj)) && (j.b(localj) == null))
      {
        b.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
        return null;
      }
      if (j.a(localj))
        return null;
      String str = j.b(localj);
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label74: break label74;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.i
 * JD-Core Version:    0.6.0
 */