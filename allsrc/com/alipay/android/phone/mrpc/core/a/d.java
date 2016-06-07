package com.alipay.android.phone.mrpc.core.a;

import com.alipay.android.phone.mrpc.core.RpcException;
import java.lang.reflect.Type;
import org.json.JSONObject;

public final class d extends a
{
  public d(Type paramType, byte[] paramArrayOfByte)
  {
    super(paramType, paramArrayOfByte);
  }

  public final Object a()
  {
    JSONObject localJSONObject;
    Integer localInteger;
    try
    {
      String str1 = new String(this.b);
      new StringBuilder("threadid = ").append(Thread.currentThread().getId()).append("; rpc response:  ").append(str1);
      localJSONObject = new JSONObject(str1);
      int i = localJSONObject.getInt("resultStatus");
      if (i != 1000)
      {
        String str3 = localJSONObject.optString("tips");
        throw new RpcException(Integer.valueOf(i), str3);
      }
    }
    catch (Exception localException)
    {
      localInteger = Integer.valueOf(10);
      if ("response  =" + new String(this.b) + ":" + localException != null);
    }
    for (String str2 = ""; ; str2 = localException.getMessage())
    {
      throw new RpcException(localInteger, str2);
      if (this.a == String.class)
        return localJSONObject.optString("result");
      Object localObject = com.alipay.a.a.a.a(localJSONObject.optString("result"), this.a);
      return localObject;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.a.d
 * JD-Core Version:    0.6.0
 */