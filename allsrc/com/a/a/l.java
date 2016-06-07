package com.a.a;

import android.content.Context;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class l
  implements Runnable
{
  l(d paramd, Context paramContext, Map paramMap, String paramString, double paramDouble, int paramInt)
  {
  }

  public final void run()
  {
    d.b(this.a, this.b);
    JSONObject localJSONObject1;
    if (this.c != null)
      localJSONObject1 = new JSONObject(this.c);
    try
    {
      while (true)
      {
        localJSONObject1.put("method", "MAddCart");
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("i", this.d);
        localJSONObject2.put("p", this.e);
        localJSONObject2.put("n", this.f);
        JSONArray localJSONArray = new JSONArray();
        localJSONArray.put(localJSONObject2);
        localJSONObject1.put("lst", localJSONArray.toString());
        d.a(this.a, this.b, localJSONObject1);
        return;
        localJSONObject1 = new JSONObject();
      }
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.l
 * JD-Core Version:    0.6.0
 */