package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Root;

public abstract class S<T extends Root> extends e<String, Void, T>
{
  private T a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Root localRoot = a(b.b(), paramArrayOfString);
      return localRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected abstract T a(ApiService paramApiService, String[] paramArrayOfString);

  protected void a(T paramT)
  {
  }

  protected abstract void b(T paramT);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.S
 * JD-Core Version:    0.6.0
 */