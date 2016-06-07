package com.arcsoft.hpay100.b;

import java.util.HashMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;

public final class d
{
  private HashMap a;
  private HttpEntity b;

  public final String a(String paramString)
  {
    try
    {
      String str = EntityUtils.toString(this.b, paramString);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public final HashMap a()
  {
    return this.a;
  }

  public final void a(HttpEntity paramHttpEntity)
  {
    this.b = paramHttpEntity;
  }

  public final void a(Header[] paramArrayOfHeader)
  {
    this.a = new HashMap();
    int i = paramArrayOfHeader.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      Header localHeader = paramArrayOfHeader[j];
      this.a.put(localHeader.getName(), localHeader);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.b.d
 * JD-Core Version:    0.6.0
 */