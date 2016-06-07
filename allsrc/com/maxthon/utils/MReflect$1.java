package com.maxthon.utils;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Map;

class MReflect$1
  implements InvocationHandler
{
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    try
    {
      Object localObject = MReflect.on(MReflect.access$0(this.this$0)).call(str, paramArrayOfObject).get();
      return localObject;
    }
    catch (MReflectException localMReflectException)
    {
      if (this.val$isMap)
      {
        Map localMap = (Map)MReflect.access$0(this.this$0);
        if (paramArrayOfObject == null);
        for (int i = 0; (i == 0) && (str.startsWith("get")); i = paramArrayOfObject.length)
          return localMap.get(MReflect.access$1(str.substring(3)));
        if ((i == 0) && (str.startsWith("is")))
          return localMap.get(MReflect.access$1(str.substring(2)));
        if ((i == 1) && (str.startsWith("set")))
        {
          localMap.put(MReflect.access$1(str.substring(3)), paramArrayOfObject[0]);
          return null;
        }
      }
    }
    throw localMReflectException;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.MReflect.1
 * JD-Core Version:    0.6.0
 */