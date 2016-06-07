package com.alipay.android.phone.mrpc.core;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class HttpUrlHeader
  implements Serializable
{
  private static final long serialVersionUID = -6098125857367743614L;
  private Map<String, String> headers = new HashMap();

  public String getHead(String paramString)
  {
    return (String)this.headers.get(paramString);
  }

  public Map<String, String> getHeaders()
  {
    return this.headers;
  }

  public void setHead(String paramString1, String paramString2)
  {
    this.headers.put(paramString1, paramString2);
  }

  public void setHeaders(Map<String, String> paramMap)
  {
    this.headers = paramMap;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.HttpUrlHeader
 * JD-Core Version:    0.6.0
 */