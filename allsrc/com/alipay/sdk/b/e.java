package com.alipay.sdk.b;

import android.os.Build;
import android.text.TextUtils;
import com.alipay.sdk.c.b;
import java.lang.ref.WeakReference;
import java.util.Locale;
import org.json.JSONObject;

public final class e
{
  public a a;
  public WeakReference<c> b = null;
  public boolean c = true;
  boolean d = true;
  private JSONObject e;
  private JSONObject f;

  public e(a parama, JSONObject paramJSONObject)
  {
    this(parama, paramJSONObject, 0);
  }

  private e(a parama, JSONObject paramJSONObject, byte paramByte)
  {
    this.a = parama;
    this.e = paramJSONObject;
    this.f = null;
    this.b = new WeakReference(null);
  }

  public final JSONObject a(String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("device", Build.MODEL);
      localJSONObject3 = new JSONObject();
      localJSONObject4 = com.arcsoft.hpay100.a.a.a(localJSONObject2, null);
      localJSONObject4.put("namespace", this.a.b);
      localJSONObject4.put("api_name", this.a.e);
      localJSONObject4.put("api_version", this.a.d);
      if (this.e == null)
        this.e = new JSONObject();
      this.e.put("action", localJSONObject3);
      str1 = this.a.c;
      boolean bool = TextUtils.isEmpty(str1);
      if (bool);
    }
    catch (Exception localException1)
    {
      try
      {
        JSONObject localJSONObject3;
        JSONObject localJSONObject4;
        String str1;
        String[] arrayOfString = str1.split("/");
        localJSONObject3.put("type", arrayOfString[1]);
        if (arrayOfString.length > 1)
          localJSONObject3.put("method", arrayOfString[2]);
        label178: this.e.put("gzip", this.d);
        if (this.c)
        {
          JSONObject localJSONObject5 = new JSONObject();
          new StringBuilder("requestData before: ").append(this.e.toString());
          String str2 = this.e.toString();
          String str3 = com.arcsoft.hpay100.a.a.a(paramString, com.alipay.sdk.a.a.b);
          String str4 = b.a(paramString, str2);
          Locale localLocale = Locale.getDefault();
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = Integer.valueOf(str3.length());
          arrayOfObject[1] = str3;
          arrayOfObject[2] = Integer.valueOf(str4.length());
          arrayOfObject[3] = str4;
          localJSONObject5.put("req_data", String.format(localLocale, "%08X%s%08X%s", arrayOfObject));
          localJSONObject4.put("params", localJSONObject5);
          localJSONObject1.put("data", localJSONObject4);
        }
        while (true)
        {
          new StringBuilder("requestData : ").append(localJSONObject1.toString());
          return localJSONObject1;
          localJSONObject4.put("params", this.e);
          break;
          localException1 = localException1;
        }
      }
      catch (Exception localException2)
      {
        break label178;
      }
    }
  }

  public final String toString()
  {
    return this.a.toString() + ", requestData = " + com.arcsoft.hpay100.a.a.a(this.e, null) + ", timeStamp = 0";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.b.e
 * JD-Core Version:    0.6.0
 */