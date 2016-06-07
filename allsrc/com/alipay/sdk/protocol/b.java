package com.alipay.sdk.protocol;

import android.text.TextUtils;
import org.json.JSONObject;

public final class b
{
  String a;
  String b;
  String c;
  String d;
  String e;
  boolean f;
  boolean g = true;
  boolean h = true;
  String i;
  String j;
  String k;
  JSONObject l;

  private b(String paramString)
  {
    this.a = paramString;
  }

  public static b a(JSONObject paramJSONObject, String paramString)
  {
    boolean bool1 = true;
    JSONObject localJSONObject = paramJSONObject.optJSONObject(paramString);
    if ((localJSONObject != null) && (localJSONObject.has("name")));
    for (String str1 = localJSONObject.optString("name"); ; str1 = null)
    {
      if ((localJSONObject != null) && (localJSONObject.has("host")));
      for (String str2 = localJSONObject.optString("host"); ; str2 = null)
      {
        if ((localJSONObject != null) && (localJSONObject.has("params")));
        for (String str3 = localJSONObject.optString("params"); ; str3 = null)
        {
          if ((localJSONObject != null) && (localJSONObject.has("enctype")));
          for (String str4 = localJSONObject.optString("enctype"); ; str4 = null)
          {
            if ((localJSONObject != null) && (localJSONObject.has("request_param")));
            for (String str5 = localJSONObject.optString("request_param"); ; str5 = null)
            {
              if ((localJSONObject != null) && (localJSONObject.has("validate")));
              for (boolean bool2 = localJSONObject.optBoolean("validate", bool1); ; bool2 = bool1)
              {
                boolean bool5;
                if ((localJSONObject != null) && (localJSONObject.has("https")))
                  if (!localJSONObject.optBoolean("https"))
                    bool5 = bool1;
                for (boolean bool3 = bool5; ; bool3 = bool1)
                {
                  if ((localJSONObject != null) && (localJSONObject.has("formSubmit")))
                    bool1 = localJSONObject.optBoolean("formSubmit");
                  String str6 = "";
                  if ((localJSONObject != null) && (localJSONObject.has("namespace")))
                    str6 = localJSONObject.optString("namespace");
                  String str7 = "";
                  if ((localJSONObject != null) && (localJSONObject.has("apiVersion")))
                    str7 = localJSONObject.optString("apiVersion");
                  String str8 = "";
                  if ((localJSONObject != null) && (localJSONObject.has("apiName")))
                    str8 = localJSONObject.optString("apiName");
                  if (TextUtils.isEmpty(str1))
                  {
                    return null;
                    bool5 = false;
                    break;
                  }
                  b localb = new b(str1);
                  localb.a = str1;
                  boolean bool4 = TextUtils.isEmpty(str2);
                  String str9 = null;
                  if (bool4);
                  while (true)
                  {
                    localb.b = str9;
                    localb.c = str3;
                    localb.d = str4;
                    localb.e = str5;
                    localb.f = bool2;
                    localb.g = bool3;
                    localb.h = bool1;
                    localb.i = str6;
                    localb.j = str7;
                    localb.k = str8;
                    localb.l = localJSONObject;
                    return localb;
                    str9 = str2.trim();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final JSONObject a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(this.c);
      return localJSONObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.protocol.b
 * JD-Core Version:    0.6.0
 */