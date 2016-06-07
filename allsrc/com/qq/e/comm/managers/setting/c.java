package com.qq.e.comm.managers.setting;

import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private JSONObject a = new JSONObject();

  public c()
  {
  }

  public c(String paramString)
  {
    this();
    GDTLogger.d("Initialize GDTSDKSetting,Json=" + paramString);
    if (!StringUtil.isEmpty(paramString));
    try
    {
      this.a = new JSONObject(paramString);
      return;
    }
    catch (JSONException localJSONException)
    {
      GDTLogger.report("Exception while building GDTSDKSetting from json", localJSONException);
    }
  }

  final Object a(String paramString)
  {
    return this.a.opt(paramString);
  }

  final void a(String paramString, Object paramObject)
  {
    try
    {
      this.a.putOpt(paramString, paramObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      GDTLogger.e("Exception while update setting", localJSONException);
    }
  }

  public String toString()
  {
    return "GDTSDKSetting[" + this.a.toString() + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.setting.c
 * JD-Core Version:    0.6.0
 */