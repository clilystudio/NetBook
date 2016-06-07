package com.xiaomi.mipush.sdk;

import com.alipay.a.a.c;
import com.alipay.a.a.d;
import java.lang.reflect.Type;

public class a
  implements c, d
{
  public Object a(Object paramObject)
  {
    return ((Enum)paramObject).name();
  }

  public Object a(Object paramObject, Type paramType)
  {
    return Enum.valueOf((Class)paramType, paramObject.toString());
  }

  public boolean a(Class<?> paramClass)
  {
    return Enum.class.isAssignableFrom(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.a
 * JD-Core Version:    0.6.0
 */