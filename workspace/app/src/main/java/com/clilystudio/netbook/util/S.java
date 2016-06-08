package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Root;

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
 * Qualified Name:     com.clilystudio.netbook.util.S
 * JD-Core Version:    0.6.0
 */