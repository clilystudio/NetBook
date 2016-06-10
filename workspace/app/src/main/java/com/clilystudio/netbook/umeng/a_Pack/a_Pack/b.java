package com.clilystudio.netbook.umeng.a_Pack.a_Pack;

import android.content.Context;

import com.clilystudio.netbook.umeng.a_Pack.o;
import org.json.JSONObject;
import u.aly.bs;
import u.aly.bt;
import u.aly.bx;

public final class b
{
  private a a = null;
  private f b = null;
  private long c = 0L;

  private JSONObject b(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "online_config");
      localJSONObject.put("appkey", com.clilystudio.netbook.umeng.a_Pack.a.a(paramContext));
      localJSONObject.put("version_code", bs.a(paramContext));
      localJSONObject.put("package", bs.o(paramContext));
      localJSONObject.put("sdk_version", "5.2.4");
      localJSONObject.put("idmd5", bx.b(bs.c(paramContext)));
      localJSONObject.put("channel", com.clilystudio.netbook.umeng.a_Pack.a.b(paramContext));
      localJSONObject.put("report_policy", o.a(paramContext).a()[0]);
      o.a(paramContext);
      localJSONObject.put("last_config_time", o.g().getString("umeng_last_config_time", ""));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "exception in onlineConfigInternal");
    }
    return null;
  }

  public final void a(Context paramContext)
  {
    if (paramContext == null);
    try
    {
      bt.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
      return;
      long l = System.currentTimeMillis();
      if (l - this.c > 3600000L)
      {
        this.c = l;
        new Thread(new d(this, paramContext.getApplicationContext())).start();
        return;
      }
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "exception in updateOnlineConfig");
    }
  }

  public final void a(a parama)
  {
    this.a = parama;
  }

  public final void a(f paramf)
  {
    this.b = paramf;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.a.a.b
 * JD-Core Version:    0.6.0
 */