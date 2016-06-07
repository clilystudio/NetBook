package com.ushaqi.zhuishushenqi.adapter;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PostPublish;

final class S extends e<String, Void, PostPublish>
{
  S(G paramG)
  {
  }

  private static PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      PostPublish localPostPublish = b.b().k(paramArrayOfString[0], paramArrayOfString[1]);
      return localPostPublish;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.S
 * JD-Core Version:    0.6.0
 */