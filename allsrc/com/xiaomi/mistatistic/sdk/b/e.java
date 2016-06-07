package com.xiaomi.mistatistic.sdk.b;

import com.xiaomi.mistatistic.sdk.a.t;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class e extends b
{
  private String b;
  private String c;
  private long d;
  private Map e;

  public e(String paramString1, String paramString2, long paramLong, Map paramMap)
  {
    this.b = paramString1;
    this.c = paramString2;
    this.d = 1L;
    this.e = paramMap;
  }

  private static String a(Map paramMap)
  {
    JSONObject localJSONObject;
    if (paramMap != null)
      try
      {
        if (!paramMap.isEmpty())
        {
          localJSONObject = new JSONObject();
          Iterator localIterator = paramMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str2 = (String)localIterator.next();
            localJSONObject.put(str2, paramMap.get(str2));
          }
        }
      }
      catch (JSONException localJSONException)
      {
        new t();
        t.a("json error", localJSONException);
      }
    else
      return null;
    String str1 = localJSONObject.toString();
    return str1;
  }

  public final i a()
  {
    i locali = new i();
    locali.a = this.b;
    locali.c = this.c;
    locali.b = this.a;
    locali.d = b();
    locali.e = String.valueOf(this.d);
    locali.f = a(this.e);
    return locali;
  }

  public String b()
  {
    return "numeric";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.b.e
 * JD-Core Version:    0.6.0
 */