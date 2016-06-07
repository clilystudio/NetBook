package com.alipay.sdk.protocol;

import android.content.Context;
import com.alipay.sdk.b.e;
import com.alipay.sdk.e.b;
import org.json.JSONObject;

public final class d
{
  public static g a(c paramc)
  {
    e locale = paramc.a;
    com.alipay.sdk.b.f localf = paramc.b;
    JSONObject localJSONObject = paramc.c;
    g localg1;
    if (localJSONObject.has("form"))
    {
      localg1 = new g(locale, localf);
      localg1.a(paramc.c);
    }
    boolean bool;
    do
    {
      return localg1;
      bool = localJSONObject.has("status");
      localg1 = null;
    }
    while (!bool);
    f localf1 = f.a(localJSONObject.optString("status"));
    switch (e.a[localf1.ordinal()])
    {
    default:
      return null;
    case 1:
    case 2:
    case 3:
      g localg2 = new g(locale, localf);
      localg2.a(localJSONObject);
      return localg2;
    case 4:
    }
    Context localContext = b.a().a;
    String str1 = com.alipay.sdk.util.a.a(localContext).a();
    String str2 = com.alipay.sdk.util.a.a(localContext).b();
    com.alipay.sdk.f.a locala = new com.alipay.sdk.f.a(localContext);
    locala.a(str1, str2);
    locala.close();
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.protocol.d
 * JD-Core Version:    0.6.0
 */