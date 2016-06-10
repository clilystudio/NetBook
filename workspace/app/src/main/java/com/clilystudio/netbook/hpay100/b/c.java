package com.clilystudio.netbook.hpay100.b;

import android.content.Context;
import android.support.v7.app.f;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class c
{
  private DefaultHttpClient a;

  private c(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, paramInt1);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, paramInt2);
    localBasicHttpParams.setBooleanParameter("http.protocol.handle-redirects", false);
    this.a = new DefaultHttpClient(localBasicHttpParams);
    if ((paramBoolean2) && (a.k(paramContext)))
    {
      HttpHost localHttpHost = new HttpHost("10.0.0.172", 80);
      this.a.getParams().setParameter("http.route.default-proxy", localHttpHost);
    }
  }

  public static c a(Context paramContext)
  {
    return new c(paramContext, 20000, 30000, false, false);
  }

  public static c a(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return new c(paramContext, paramInt1, paramInt2, false, paramBoolean);
  }

  public static d a(String paramString, Map paramMap1, Map paramMap2)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    if (paramMap2 == null)
      paramMap2 = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap2.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        HttpPost localHttpPost = new HttpPost(paramString);
        if (paramMap1 == null)
          paramMap1 = new HashMap();
        b(paramMap1);
        if (paramMap1 != null)
          localHttpPost.setHeaders(a(paramMap1));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
        return a(localDefaultHttpClient, localHttpPost);
      }
      String str = (String)localIterator.next();
      localArrayList.add(new BasicNameValuePair(str, (String)paramMap2.get(str)));
    }
  }

  public static d a(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest)
  {
    paramAbstractHttpClient.addResponseInterceptor(new e());
    HttpResponse localHttpResponse = paramAbstractHttpClient.execute(paramHttpUriRequest);
    d locald = new d();
    if (localHttpResponse == null);
    int i;
    do
    {
      return null;
      i = localHttpResponse.getStatusLine().getStatusCode();
    }
    while ((200 != i) && (301 != i) && (302 != i));
    locald.a(localHttpResponse.getAllHeaders());
    List localList = paramAbstractHttpClient.getCookieStore().getCookies();
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localStringBuffer.length() > 0)
          localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        a(paramAbstractHttpClient.getCookieStore().getCookies());
        locald.a(localHttpResponse.getEntity());
        if ((301 == i) || (302 == i))
        {
          HashMap localHashMap = locald.a();
          if ((localHashMap != null) && (localHashMap.get("Location") != null))
            ((Header)localHashMap.get("Location")).getValue();
        }
        return locald;
      }
      Cookie localCookie = (Cookie)localIterator.next();
      localStringBuffer.append(localCookie.getName()).append("=").append(localCookie.getValue()).append(";");
    }
  }

  public static String a(String paramString, Map paramMap)
  {
    String str1 = "?";
    if ((!TextUtils.isEmpty(paramString)) && (paramString.indexOf("?") > 0))
      str1 = "&";
    Iterator localIterator = paramMap.keySet().iterator();
    String str3;
    for (String str2 = str1; ; str2 = str2 + str3 + "=" + (String)paramMap.get(str3) + "&")
    {
      if (!localIterator.hasNext())
        return str2.substring(0, -1 + str2.length());
      str3 = (String)localIterator.next();
    }
  }

  public static Map a(List paramList)
  {
    HashMap localHashMap = new HashMap(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localHashMap;
      Cookie localCookie = (Cookie)localIterator.next();
      localHashMap.put(localCookie.getName(), localCookie.getValue());
    }
  }

  public static Header[] a(Map paramMap)
  {
    BasicHeader[] arrayOfBasicHeader = new BasicHeader[paramMap.size()];
    Iterator localIterator = paramMap.keySet().iterator();
    for (int i = 0; ; i++)
    {
      if (!localIterator.hasNext())
        return arrayOfBasicHeader;
      String str = (String)localIterator.next();
      arrayOfBasicHeader[i] = new BasicHeader(str, (String)paramMap.get(str));
    }
  }

  public static void b(Map paramMap)
  {
    paramMap.put("Accept-Encoding", "gzip");
  }

  public final d a(Context paramContext, String paramString1, Map paramMap1, Map paramMap2, String paramString2, boolean paramBoolean)
  {
    DefaultHttpClient localDefaultHttpClient = this.a;
    if (paramMap2 == null)
      paramMap2 = new HashMap();
    if (paramBoolean)
      f.a(paramContext, paramMap2);
    StringBuilder localStringBuilder = new StringBuilder(String.valueOf(paramString1));
    String str;
    HttpGet localHttpGet;
    if (paramMap2 == null)
    {
      str = "";
      localHttpGet = new HttpGet(str);
      if (0 != 0)
        break label125;
    }
    label125: for (HashMap localHashMap = new HashMap(); ; localHashMap = null)
    {
      b(localHashMap);
      if (localHashMap != null)
        localHttpGet.setHeaders(a(localHashMap));
      return a(localDefaultHttpClient, localHttpGet);
      str = a(paramString1, paramMap2);
      break;
    }
  }

  public final void a()
  {
    if (this.a != null)
      this.a.getConnectionManager().shutdown();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.b.c
 * JD-Core Version:    0.6.0
 */