package com.alipay.sdk.protocol;

import android.text.TextUtils;
import com.alipay.sdk.b.e;
import org.json.JSONObject;

public final class g extends h
{
  protected g(e parame, com.alipay.sdk.b.f paramf)
  {
    super(parame, paramf);
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    JSONObject localJSONObject;
    String str;
    if (paramJSONObject.has("form"))
    {
      localJSONObject = paramJSONObject.optJSONObject("form");
      str = localJSONObject.optString("type");
      Boolean.parseBoolean(localJSONObject.optString("oneTime"));
      if (!TextUtils.equals("page", str));
    }
    label47: label122: 
    do
    {
      do
      {
        break label47;
        while (true)
        {
          return;
          if (!TextUtils.equals("dialog", str))
          {
            if (!TextUtils.equals("toast", str))
              break label122;
            b localb = b.a(localJSONObject, "onload");
            if (localb == null)
              break;
            a[] arrayOfa = a.a(localb);
            int i = arrayOfa.length;
            for (int j = 0; j < i; j++)
              if (arrayOfa[j] == a.d)
                continue;
            continue;
          }
        }
      }
      while (TextUtils.equals("confirm", str));
      TextUtils.equals(str, "fullscreen");
      return;
    }
    while (f.a(paramJSONObject.optString("status")) != f.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.protocol.g
 * JD-Core Version:    0.6.0
 */