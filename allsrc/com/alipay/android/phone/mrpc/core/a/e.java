package com.alipay.android.phone.mrpc.core.a;

import com.alipay.android.phone.mrpc.core.RpcException;
import java.util.ArrayList;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class e extends b
{
  private int c;
  private Object d;

  public e(int paramInt, String paramString, Object paramObject)
  {
    super(paramString, paramObject);
    this.c = paramInt;
  }

  public final void a(Object paramObject)
  {
    this.d = paramObject;
  }

  public final byte[] a()
  {
    Integer localInteger;
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (this.d != null)
        localArrayList.add(new BasicNameValuePair("extParam", com.alipay.a.a.b.a(this.d)));
      localArrayList.add(new BasicNameValuePair("operationType", this.a));
      localArrayList.add(new BasicNameValuePair("id", this.c));
      new StringBuilder("mParams is:").append(this.b);
      if (this.b == null);
      String str2;
      for (Object localObject = "[]"; ; localObject = str2)
      {
        localArrayList.add(new BasicNameValuePair("requestData", (String)localObject));
        return URLEncodedUtils.format(localArrayList, "utf-8").getBytes();
        str2 = com.alipay.a.a.b.a(this.b);
      }
    }
    catch (Exception localException)
    {
      localInteger = Integer.valueOf(9);
      if ("request  =" + this.b + ":" + localException != null);
    }
    for (String str1 = ""; ; str1 = localException.getMessage())
      throw new RpcException(localInteger, str1, localException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.a.e
 * JD-Core Version:    0.6.0
 */