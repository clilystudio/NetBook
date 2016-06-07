package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

final class j
  implements InvocationHandler
{
  private final List<String> a;
  private boolean b;
  private String c;

  public j(List<String> paramList)
  {
    this.a = paramList;
  }

  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str1 = paramMethod.getName();
    Class localClass = paramMethod.getReturnType();
    if (paramArrayOfObject == null)
      paramArrayOfObject = l.b;
    if ((str1.equals("supports")) && (Boolean.TYPE == localClass))
      return Boolean.valueOf(true);
    if ((str1.equals("unsupported")) && (Void.TYPE == localClass))
    {
      this.b = true;
      return null;
    }
    if ((str1.equals("protocols")) && (paramArrayOfObject.length == 0))
      return this.a;
    if (((str1.equals("selectProtocol")) || (str1.equals("select"))) && (String.class == localClass) && (paramArrayOfObject.length == 1) && ((paramArrayOfObject[0] instanceof List)))
    {
      List localList = (List)paramArrayOfObject[0];
      int i = localList.size();
      for (int j = 0; j < i; j++)
      {
        if (!this.a.contains(localList.get(j)))
          continue;
        String str3 = (String)localList.get(j);
        this.c = str3;
        return str3;
      }
      String str2 = (String)this.a.get(0);
      this.c = str2;
      return str2;
    }
    if (((str1.equals("protocolSelected")) || (str1.equals("selected"))) && (paramArrayOfObject.length == 1))
    {
      this.c = ((String)paramArrayOfObject[0]);
      return null;
    }
    return paramMethod.invoke(this, paramArrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.j
 * JD-Core Version:    0.6.0
 */