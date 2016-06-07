package com.a.a;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class j
  implements Runnable
{
  j(d paramd, Context paramContext, Map paramMap, String paramString, Handler paramHandler)
  {
  }

  public final void run()
  {
    d.b(this.a, this.b);
    Object localObject = this.c;
    if (localObject == null)
      localObject = new HashMap();
    ((Map)localObject).put("appkey", d.c(this.a));
    ((Map)localObject).put("gid", d.d(this.a));
    ((Map)localObject).put("sid", d.g(this.a));
    ((Map)localObject).put("method", this.d);
    byte[] arrayOfByte = new JSONObject((Map)localObject).toString().getBytes();
    HttpPost localHttpPost = new HttpPost("http://m.api.baifendian.com/rec");
    String str1 = d.a(this.a, this.b, localHttpPost, arrayOfByte);
    String str2 = null;
    if (str1 != null);
    while (true)
    {
      try
      {
        JSONArray localJSONArray2 = new JSONArray(str1);
        int i = localJSONArray2.length();
        str2 = null;
        if (i < 3)
          continue;
        str2 = localJSONArray2.getString(2);
        if (localJSONArray2.getInt(0) == 0)
        {
          JSONArray localJSONArray3 = localJSONArray2.getJSONArray(3);
          localJSONArray1 = localJSONArray3;
          if (str2 != null)
            continue;
          str2 = "";
          Message localMessage = this.e.obtainMessage(0, new o(str2, localJSONArray1));
          this.e.sendMessage(localMessage);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
      }
      JSONArray localJSONArray1 = new JSONArray();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.j
 * JD-Core Version:    0.6.0
 */