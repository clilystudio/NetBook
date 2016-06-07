package com.alipay.sdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.b.e;
import com.alipay.sdk.b.f;
import com.alipay.sdk.exception.NetErrorException;
import com.alipay.sdk.protocol.g;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.Calendar;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  private int a = 0;
  private com.alipay.sdk.b.c b;

  public c()
  {
  }

  public c(com.alipay.sdk.b.c paramc)
  {
    this.b = paramc;
  }

  private String a(Context paramContext, String paramString1, String paramString2, com.alipay.sdk.b.c paramc, f paramf)
  {
    while (true)
    {
      try
      {
        if (a.b != null)
          continue;
        a.b = new a(paramContext, paramString1);
        if (paramc != null)
        {
          localObject2 = a.b.a(paramString2, paramc);
          StatusLine localStatusLine = ((HttpResponse)localObject2).getStatusLine();
          paramf.a = localStatusLine.getStatusCode();
          localStatusLine.getReasonPhrase();
          com.alipay.sdk.b.c localc = this.b;
          Header[] arrayOfHeader = ((HttpResponse)localObject2).getHeaders("Msp-Param");
          if ((localc == null) || (arrayOfHeader.length <= 0))
            continue;
          localc.a = arrayOfHeader;
          String str = a.a((HttpResponse)localObject2);
          return str;
          if (TextUtils.equals(paramString1, a.b.a))
            continue;
          a.b.a = paramString1;
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new NetErrorException();
      }
      finally
      {
        a.b = null;
      }
      HttpResponse localHttpResponse = a.b.a(paramString2, null);
      Object localObject2 = localHttpResponse;
    }
  }

  private JSONObject a(Context paramContext, e parame, f paramf)
  {
    int i = 0;
    Random localRandom = new Random();
    StringBuilder localStringBuilder = new StringBuilder();
    if (i < 24)
    {
      switch (localRandom.nextInt(3))
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        i++;
        break;
        localStringBuilder.append(String.valueOf((char)(int)Math.round(65.0D + 25.0D * Math.random())));
        continue;
        localStringBuilder.append(String.valueOf((char)(int)Math.round(97.0D + 25.0D * Math.random())));
        continue;
        localStringBuilder.append(String.valueOf(new Random().nextInt(10)));
      }
    }
    String str1 = localStringBuilder.toString();
    try
    {
      str2 = a(paramContext, parame.a.a, parame.a(str1).toString(), (com.alipay.sdk.b.c)parame.b.get(), paramf);
      Calendar.getInstance().getTimeInMillis();
      if (parame.c)
      {
        JSONObject localJSONObject2 = a(str2, paramf);
        if ((paramf.a == 1000) && (this.a < 3))
        {
          this.a = (1 + this.a);
          return a(paramContext, parame, paramf);
        }
        this.a = 0;
        String str3 = com.alipay.sdk.c.b.b(str1, localJSONObject2.optString("res_data"));
        new StringBuilder("respData:").append(str3);
        JSONObject localJSONObject3 = new JSONObject(str3);
        return localJSONObject3;
      }
    }
    catch (NetErrorException localNetErrorException)
    {
      String str2;
      throw localNetErrorException;
      JSONObject localJSONObject1 = a(str2, paramf);
      new StringBuilder("respData:").append(localJSONObject1.toString());
      return localJSONObject1;
    }
    catch (Exception localException)
    {
    }
    throw new NetErrorException();
  }

  private static JSONObject a(String paramString, f paramf)
  {
    JSONObject localJSONObject1 = new JSONObject(paramString).optJSONObject("data");
    if (localJSONObject1 != null)
    {
      paramf.a = localJSONObject1.optInt("code", 503);
      localJSONObject1.optString("error_msg", "");
      JSONObject localJSONObject2 = localJSONObject1.optJSONObject("params");
      if (localJSONObject2 != null)
      {
        if (paramf.a == 1000)
        {
          String str = localJSONObject2.optString("public_key");
          if (!TextUtils.isEmpty(str))
            com.alipay.sdk.e.b.a().b.a(str);
        }
        com.alipay.sdk.b.a locala = new com.alipay.sdk.b.a();
        locala.c = localJSONObject2.optString("next_api_name");
        locala.d = localJSONObject2.optString("next_api_version");
        locala.b = localJSONObject2.optString("next_namespace");
        locala.a = localJSONObject2.optString("next_request_url");
        paramf.b = locala;
        return localJSONObject2;
      }
    }
    else
    {
      paramf.a = 503;
    }
    return null;
  }

  public final com.alipay.sdk.protocol.c a(Context paramContext, e parame, boolean paramBoolean)
  {
    f localf = new f();
    JSONObject localJSONObject1 = a(paramContext, parame, localf);
    byte[] arrayOfByte1;
    if (localJSONObject1.optBoolean("gzip"))
    {
      JSONObject localJSONObject5 = localJSONObject1.optJSONObject("form");
      if ((localJSONObject5 != null) && (localJSONObject5.has("quickpay")))
        arrayOfByte1 = com.alipay.sdk.c.a.a(localJSONObject5.optString("quickpay"));
    }
    try
    {
      byte[] arrayOfByte2 = com.alipay.sdk.b.b.a(arrayOfByte1);
      if (TextUtils.equals(com.arcsoft.hpay100.a.a.a(arrayOfByte2), localJSONObject1.optString("md5")))
        localJSONObject1.put("form", new JSONObject(new String(arrayOfByte2, "utf-8")));
      new StringBuilder("responsestring decoded ").append(localJSONObject1);
      localObject = new com.alipay.sdk.protocol.c(parame, localf);
      ((com.alipay.sdk.protocol.c)localObject).a(localJSONObject1);
      if (paramBoolean)
        return localObject;
      new com.alipay.sdk.protocol.d();
      localg = com.alipay.sdk.protocol.d.a((com.alipay.sdk.protocol.c)localObject);
      if (localg == null)
      {
        JSONObject localJSONObject2 = ((com.alipay.sdk.protocol.c)localObject).c;
        com.alipay.sdk.b.a locala1 = ((com.alipay.sdk.protocol.c)localObject).a.a;
        com.alipay.sdk.b.a locala2 = ((com.alipay.sdk.protocol.c)localObject).b.b;
        if (TextUtils.isEmpty(locala2.c))
          locala2.c = locala1.c;
        if (TextUtils.isEmpty(locala2.d))
          locala2.d = locala1.d;
        if (TextUtils.isEmpty(locala2.b))
          locala2.b = locala1.b;
        if (TextUtils.isEmpty(locala2.a))
          locala2.a = locala1.a;
        JSONObject localJSONObject3 = localJSONObject2.optJSONObject("reflected_data");
        if (localJSONObject3 != null)
          new StringBuilder("session = ").append(localJSONObject3.optString("session", ""));
        while (true)
        {
          localJSONObject2.optString("end_code", "0");
          localJSONObject2.optString("user_id", "");
          localJSONObject2.optString("result");
          try
          {
            URLDecoder.decode(localJSONObject2.optString("result"), "UTF-8");
            label377: localJSONObject2.optString("memo", "");
            return localObject;
            if (!localJSONObject2.has("session"))
              continue;
            JSONObject localJSONObject4 = new JSONObject();
            try
            {
              localJSONObject4.put("session", localJSONObject2.optString("session"));
              String str = com.alipay.sdk.f.b.a().a;
              if (TextUtils.isEmpty(str))
                continue;
              localJSONObject4.put("tid", str);
            }
            catch (JSONException localJSONException)
            {
            }
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            break label377;
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        g localg;
        continue;
        Object localObject = localg;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.d.c
 * JD-Core Version:    0.6.0
 */