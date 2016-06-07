package com.a.a;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class f
  implements Runnable
{
  f(d paramd, Context paramContext, Map paramMap, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    d.b(this.a, this.b);
    JSONObject localJSONObject;
    if (this.c != null)
      localJSONObject = new JSONObject(this.c);
    try
    {
      while (true)
      {
        localJSONObject.put("method", "MFeedBack");
        localJSONObject.put("rid", this.d);
        localJSONObject.put("app", "mobile_rec");
        localJSONObject.put("iid", this.e);
        d.a(this.a, this.b, localJSONObject);
        return;
        localJSONObject = new JSONObject();
      }
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.f
 * JD-Core Version:    0.6.0
 */