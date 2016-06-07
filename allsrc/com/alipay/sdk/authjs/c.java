package com.alipay.sdk.authjs;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import org.json.JSONObject;

public final class c
{
  b a;
  Context b;

  public c(Context paramContext, b paramb)
  {
    this.b = paramContext;
    this.a = paramb;
  }

  public final void a(a parama)
  {
    if (TextUtils.isEmpty(parama.b))
    {
      a(parama.a, a.a.c);
      return;
    }
    d locald = new d(this, parama);
    if (Looper.getMainLooper() == Looper.myLooper());
    for (int i = 1; i != 0; i = 0)
    {
      locald.run();
      return;
    }
    new Handler(Looper.getMainLooper()).post(locald);
  }

  public final void a(String paramString, a.a parama)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("error", parama.ordinal());
    a locala = new a("callback");
    locala.d = localJSONObject;
    locala.a = paramString;
    this.a.a(locala);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.authjs.c
 * JD-Core Version:    0.6.0
 */