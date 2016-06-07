package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import java.lang.reflect.Type;

class CommonRequest$36
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    CommonRequest.access$0().postError(paramInt, paramString, this.val$callback);
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    Type localType = new CommonRequest.36.1(this).getType();
    if (localBaseResponse.getStatusCode() == 200)
      try
      {
        AdvertisList localAdvertisList = (AdvertisList)localBaseResponse.getResponseBodyStringToObject(localType);
        CommonRequest.access$0().postSuccess(this.val$callback, localAdvertisList);
        return;
      }
      catch (Exception localException)
      {
        CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
        return;
      }
    CommonRequest.access$0().postError(localBaseResponse.getStatusCode(), localBaseResponse.getStatusMessage(), this.val$callback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.36
 * JD-Core Version:    0.6.0
 */