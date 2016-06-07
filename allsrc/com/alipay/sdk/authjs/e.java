package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

final class e extends TimerTask
{
  e(c paramc, a parama)
  {
  }

  public final void run()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("toastCallBack", "true");
      label17: a locala = new a("callback");
      locala.a = this.a.a;
      locala.d = localJSONObject;
      this.b.a.a(locala);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label17;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.authjs.e
 * JD-Core Version:    0.6.0
 */