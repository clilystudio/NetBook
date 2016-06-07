package com.alipay.sdk.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
{
  private String a;
  private String b;

  public a(Context paramContext)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      this.a = localPackageInfo.versionName;
      this.b = localPackageInfo.packageName;
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
  }

  public final String toString()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("appkey", "2014052600006128");
      localJSONObject.put("ty", "and_lite");
      localJSONObject.put("sv", "h.a.3.0.1");
      localJSONObject.put("an", this.b);
      localJSONObject.put("av", this.a);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
    }
    return "";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.e.a
 * JD-Core Version:    0.6.0
 */