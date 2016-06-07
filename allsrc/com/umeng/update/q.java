package com.umeng.update;

import android.content.Context;
import com.umeng.update.util.DeltaUpdate;
import org.json.JSONObject;
import u.a.a;
import u.a.b;
import u.a.e;
import u.a.g;

public class q extends e
{
  private final String d = q.class.getName();
  private JSONObject e = a(paramContext);

  public q(Context paramContext)
  {
    super(null);
  }

  private JSONObject a(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "update");
      localJSONObject.put("appkey", k.a(paramContext));
      localJSONObject.put("version_code", a.a(paramContext));
      localJSONObject.put("package", a.g(paramContext));
      localJSONObject.put("idmd5", g.b(a.b(paramContext)));
      localJSONObject.put("channel", k.b(paramContext));
      localJSONObject.put("proto_ver", "1.4");
      localJSONObject.put("sdk_version", "2.4.2.20140520");
      localJSONObject.put("old_md5", DeltaUpdate.b(paramContext));
      if ((DeltaUpdate.a()) && (k.d()));
      for (boolean bool = true; ; bool = false)
      {
        localJSONObject.put("delta", bool);
        return localJSONObject;
      }
    }
    catch (Exception localException)
    {
      b.b(this.d, "exception in updateInternal", localException);
    }
    return null;
  }

  public final JSONObject a()
  {
    return this.e;
  }

  public final String b()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.q
 * JD-Core Version:    0.6.0
 */