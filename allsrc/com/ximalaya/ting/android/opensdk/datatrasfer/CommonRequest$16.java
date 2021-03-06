package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.banner.RankBannerList;
import java.lang.reflect.Type;
import java.util.List;

class CommonRequest$16
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    CommonRequest.access$0().postError(paramInt, paramString, this.val$callback);
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    Type localType = new CommonRequest.16.1(this).getType();
    try
    {
      List localList = (List)localBaseResponse.getResponseBodyStringToObject(localType);
      RankBannerList localRankBannerList = new RankBannerList();
      localRankBannerList.setBannerList(localList);
      CommonRequest.access$0().postSuccess(this.val$callback, localRankBannerList);
      return;
    }
    catch (Exception localException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.16
 * JD-Core Version:    0.6.0
 */