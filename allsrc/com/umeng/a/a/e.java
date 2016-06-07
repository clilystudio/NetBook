package com.umeng.a.a;

import java.util.Locale;
import org.json.JSONObject;
import u.aly.bt;
import u.aly.bw;

public class e extends bw
{
  public JSONObject a = null;
  boolean b = false;
  int c = -1;
  int d = -1;
  String e;

  public e(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    if (paramJSONObject == null);
    while (true)
    {
      return;
      try
      {
        if (paramJSONObject.has("config_update"))
        {
          boolean bool = paramJSONObject.getString("config_update").toLowerCase(Locale.US).equals("no");
          if (!bool)
            break label83;
        }
        while ((this.c < 0) || (this.c > 6))
        {
          this.c = 1;
          return;
          label83: if (!paramJSONObject.has("report_policy"))
            break label156;
          this.c = paramJSONObject.getInt("report_policy");
          this.d = (1000 * paramJSONObject.optInt("report_interval"));
          this.e = paramJSONObject.optString("last_config_time");
          this.a = paramJSONObject.optJSONObject("online_params");
          this.b = true;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          bt.d("MobclickAgent", "fail to parce online config response", localException);
          continue;
          label156: bt.d("MobclickAgent", " online config fetch no report policy");
        }
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.e
 * JD-Core Version:    0.6.0
 */