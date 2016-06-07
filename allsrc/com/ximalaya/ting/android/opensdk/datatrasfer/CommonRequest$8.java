package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.track.TrackHotList;
import java.lang.reflect.Type;
import java.util.Map;

class CommonRequest$8
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    CommonRequest.access$0().postError(paramInt, paramString, this.val$callback);
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    Type localType = new CommonRequest.8.1(this).getType();
    try
    {
      TrackHotList localTrackHotList = (TrackHotList)localBaseResponse.getResponseBodyStringToObject(localType);
      this.val$params.put("total_page", String.valueOf(localTrackHotList.getTotalPage()));
      localTrackHotList.setParams(this.val$params);
      CommonRequest.access$0().postSuccess(this.val$callback, localTrackHotList);
      return;
    }
    catch (Exception localException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.8
 * JD-Core Version:    0.6.0
 */