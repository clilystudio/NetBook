package com.qq.e.comm.services;

import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.setting.SM;
import com.qq.e.comm.net.NetworkCallBack;
import com.qq.e.comm.net.rr.Request;
import com.qq.e.comm.net.rr.Response;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

final class a$1
  implements NetworkCallBack
{
  public final void onException(Exception paramException)
  {
    GDTLogger.e("ActivateError", paramException);
    RetCodeService.getInstance().send(new RetCodeService.RetCodeInfo("sdk.e.qq.com", "launch", "", -1, (int)(System.currentTimeMillis() - this.c), 0, 0, 1));
  }

  public final void onResponse(Request paramRequest, Response paramResponse)
  {
    try
    {
      if (paramResponse.getStatusCode() == 200)
      {
        String str1 = paramResponse.getStringContent();
        GDTLogger.d("ACTIVERESPONSE:" + str1);
        if (StringUtil.isEmpty(str1))
        {
          GDTLogger.report("SDK Server response empty string,maybe zip or tea format error");
          return;
        }
        JSONObject localJSONObject1 = new JSONObject(str1);
        int i = -1;
        if (localJSONObject1.has("ret"))
          i = localJSONObject1.getInt("ret");
        if (i != 0)
          GDTLogger.e("Response Error,retCode=" + i);
        while (true)
        {
          return;
          if (localJSONObject1.has("suid"))
          {
            String str10 = localJSONObject1.getString("suid");
            if (!StringUtil.isEmpty(str10))
              this.a.updateSUID(str10);
          }
          if (localJSONObject1.has("sid"))
          {
            String str9 = localJSONObject1.getString("sid");
            if (!StringUtil.isEmpty(str9))
              this.a.updateSID(str9);
          }
          if (!localJSONObject1.has("sig"))
            continue;
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("sig");
          if (localJSONObject1.has("setting"))
          {
            JSONObject localJSONObject3 = localJSONObject1.getJSONObject("setting");
            if ((localJSONObject3.has("app")) && (localJSONObject2.has("app")))
            {
              String str7 = localJSONObject3.getString("app");
              String str8 = localJSONObject2.getString("app");
              this.a.updateDEVCloudSetting(str8, str7);
            }
            if ((localJSONObject3.has("sdk")) && (localJSONObject2.has("sdk")))
            {
              String str5 = localJSONObject3.getString("sdk");
              String str6 = localJSONObject2.getString("sdk");
              this.a.updateSDKCloudSetting(str6, str5);
            }
            if (!localJSONObject3.has("c"))
              break;
            String str4 = localJSONObject3.getString("c");
            this.a.updateContextSetting(str4);
          }
          if ((!localJSONObject2.has("jar")) || (!localJSONObject2.has("url")))
            continue;
          String str2 = localJSONObject2.getString("jar");
          String str3 = localJSONObject2.getString("url");
          this.b.update(str2, str3);
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        GDTLogger.e("ActivateError", localIOException);
        return;
        this.a.updateContextSetting(null);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        GDTLogger.e("Parse Active or launch response exception", localJSONException);
        return;
        GDTLogger.e("SDK server response code error while launch or activate,code:" + paramResponse.getStatusCode());
      }
    }
    finally
    {
      RetCodeService.getInstance().send(new RetCodeService.RetCodeInfo("sdk.e.qq.com", "launch", "", paramResponse.getStatusCode(), (int)(System.currentTimeMillis() - this.c), 0, 0, 1));
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.services.a.1
 * JD-Core Version:    0.6.0
 */