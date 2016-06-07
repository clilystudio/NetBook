package com.a.a;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class n
  implements Runnable
{
  n(d paramd, Context paramContext, Map paramMap, String paramString)
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
        localJSONObject.put("method", "MSearch");
        localJSONObject.put("qstr", this.d);
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
 * Qualified Name:     com.a.a.n
 * JD-Core Version:    0.6.0
 */