package com.xiaomi.smack;

import android.support.v7.app.k;
import android.text.TextUtils;
import com.xiaomi.push.service.R;
import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.packet.e;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class v extends e
{
  public v(u paramu, R paramR, String paramString, l paraml)
  {
    HashMap localHashMap = new HashMap();
    int i = paraml.k();
    localHashMap.put("challenge", paramString);
    localHashMap.put("token", paramR.c);
    localHashMap.put("chid", paramR.h);
    localHashMap.put("from", paramR.b);
    localHashMap.put("id", e());
    localHashMap.put("to", "xiaomi.com");
    String str1;
    if (paramR.e)
    {
      localHashMap.put("kick", "1");
      if (paraml.m() <= 0L)
        break label643;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Long.valueOf(paraml.m());
      str1 = String.format("conn:%1$d,t:%2$d", arrayOfObject);
      localHashMap.put("pf", str1);
      paraml.l();
      paraml.n();
    }
    while (true)
    {
      label210: label234: String str2;
      label274: String str3;
      label350: a locala4;
      label423: String str4;
      label454: a locala6;
      if (!TextUtils.isEmpty(paramR.f))
      {
        localHashMap.put("client_attrs", paramR.f);
        if (TextUtils.isEmpty(paramR.g))
          break label571;
        localHashMap.put("cloud_attrs", paramR.g);
        if ((!paramR.d.equals("XIAOMI-PASS")) && (!paramR.d.equals("XMPUSH-PASS")))
          break label586;
        str2 = k.a(paramR.d, null, localHashMap, paramR.i);
        l(paramR.h);
        n(paramR.b);
        m("xiaomi.com");
        a locala1 = new a("token", null, null, null);
        locala1.b(paramR.c);
        a(locala1);
        a locala2 = new a("kick", null, null, null);
        if (!paramR.e)
          break label602;
        str3 = "1";
        locala2.b(str3);
        a(locala2);
        a locala3 = new a("sig", null, null, null);
        locala3.b(str2);
        a(locala3);
        locala4 = new a("method", null, null, null);
        if (TextUtils.isEmpty(paramR.d))
          break label609;
        locala4.b(paramR.d);
        a(locala4);
        a locala5 = new a("client_attrs", null, null, null);
        if (paramR.f != null)
          break label619;
        str4 = "";
        locala5.b(str4);
        a(locala5);
        locala6 = new a("cloud_attrs", null, null, null);
        if (paramR.g != null)
          break label631;
      }
      label571: label586: label602: label609: label619: label631: for (String str5 = ""; ; str5 = com.xiaomi.smack.d.g.a(paramR.g))
      {
        locala6.b(str5);
        a(locala6);
        if (!TextUtils.isEmpty(str1))
        {
          a locala7 = new a("pf", null, null, null);
          locala7.b(str1);
          a(locala7);
        }
        return;
        localHashMap.put("kick", "0");
        break;
        localHashMap.put("client_attrs", "");
        break label210;
        localHashMap.put("cloud_attrs", "");
        break label234;
        paramR.d.equals("XIAOMI-SASL");
        str2 = null;
        break label274;
        str3 = "0";
        break label350;
        locala4.b("XIAOMI-SASL");
        break label423;
        str4 = com.xiaomi.smack.d.g.a(paramR.f);
        break label454;
      }
      label643: str1 = null;
    }
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<bind ");
    if (e() != null)
      localStringBuilder.append("id=\"" + e() + "\" ");
    if (g() != null)
      localStringBuilder.append("to=\"").append(com.xiaomi.smack.d.g.a(g())).append("\" ");
    if (h() != null)
      localStringBuilder.append("from=\"").append(com.xiaomi.smack.d.g.a(h())).append("\" ");
    if (f() != null)
      localStringBuilder.append("chid=\"").append(com.xiaomi.smack.d.g.a(f())).append("\">");
    if (k() != null)
    {
      Iterator localIterator = k().iterator();
      while (localIterator.hasNext())
        localStringBuilder.append(((a)localIterator.next()).c());
    }
    localStringBuilder.append("</bind>");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.v
 * JD-Core Version:    0.6.0
 */