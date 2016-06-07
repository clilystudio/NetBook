package com.alipay.sdk.authjs;

import android.widget.Toast;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

final class d
  implements Runnable
{
  d(c paramc, a parama)
  {
  }

  public final void run()
  {
    c localc = this.b;
    a locala = this.a;
    if ((locala != null) && ("toast".equals(locala.b)))
    {
      JSONObject localJSONObject = locala.d;
      String str = localJSONObject.optString("content");
      int i = localJSONObject.optInt("duration");
      int j = 1;
      if (i < 2500)
        j = 0;
      Toast.makeText(localc.b, str, j).show();
      new Timer().schedule(new e(localc, locala), j);
    }
    a.a locala1 = a.a.a;
    if (locala1 != a.a.a);
    try
    {
      this.b.a(this.a.a, locala1);
      return;
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.authjs.d
 * JD-Core Version:    0.6.0
 */