package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.track.CommonTrackList;
import java.lang.reflect.Type;

class CommonRequest$37
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    this.val$callback.onError(paramInt, paramString);
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    Type localType = new CommonRequest.37.1(this).getType();
    try
    {
      CommonTrackList localCommonTrackList = (CommonTrackList)localBaseResponse.getResponseBodyStringToObject(localType);
      CommonRequest.access$0().postSuccess(this.val$callback, localCommonTrackList);
      return;
    }
    catch (Exception localException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.37
 * JD-Core Version:    0.6.0
 */