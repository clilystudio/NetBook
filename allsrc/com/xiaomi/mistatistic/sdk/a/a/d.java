package com.xiaomi.mistatistic.sdk.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a;
import com.xiaomi.mistatistic.sdk.a.j;
import com.xiaomi.mistatistic.sdk.a.l;
import com.xiaomi.mistatistic.sdk.a.r;
import com.xiaomi.mistatistic.sdk.a.t;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
  implements j
{
  private e a;
  private String b;

  public d(String paramString, e parame)
  {
    this.a = parame;
    this.b = paramString;
  }

  public final void a()
  {
    new t();
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("app_id", r.c()));
      localArrayList.add(new BasicNameValuePair("app_key", r.d()));
      new l();
      localArrayList.add(new BasicNameValuePair("device_id", l.a()));
      localArrayList.add(new BasicNameValuePair("channel", r.e()));
      String str1 = r.f();
      if (!TextUtils.isEmpty(str1))
        localArrayList.add(new BasicNameValuePair("version", str1));
      localArrayList.add(new BasicNameValuePair("stat_value", this.b));
      Context localContext = r.b();
      if (a.a());
      for (String str2 = "http://10.99.168.145:8097/mistats"; ; str2 = "https://data.mistat.xiaomi.com/mistats")
      {
        String str3 = r.a(localContext, str2, localArrayList);
        t.a("Upload MiStat data complete, result=" + str3);
        boolean bool2 = TextUtils.isEmpty(str3);
        bool1 = false;
        if (!bool2)
        {
          boolean bool3 = "ok".equals(new JSONObject(str3).getString("status"));
          bool1 = false;
          if (bool3)
            bool1 = true;
        }
        this.a.a(bool1);
        return;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        t.a("Upload MiStat data failed", localIOException);
        bool1 = false;
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        t.a("Result parse failed", localJSONException);
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.a.d
 * JD-Core Version:    0.6.0
 */