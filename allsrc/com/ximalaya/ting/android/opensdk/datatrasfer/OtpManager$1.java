package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.squareup.okhttp.K;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import org.json.JSONObject;

class OtpManager$1
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    if (paramI.c() == 200);
    try
    {
      JSONObject localJSONObject = new JSONObject(paramI.g().f());
      this.this$0.setOtp(localJSONObject.optString("otp"), localJSONObject.optLong("expire_in"));
      return;
      CommonRequest.getInstanse().parseResponseHandler(localBaseResponse);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.OtpManager.1
 * JD-Core Version:    0.6.0
 */