package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.album.HumanRecommendAlbumList;
import java.lang.reflect.Type;
import java.util.List;

class CommonRequest$17
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    CommonRequest.access$0().postError(paramInt, paramString, this.val$callback);
  }

  public void onResponse(I paramI)
  {
    BaseResponse localBaseResponse = new BaseResponse(paramI);
    Type localType = new CommonRequest.17.1(this).getType();
    try
    {
      List localList = (List)localBaseResponse.getResponseBodyStringToObject(localType);
      HumanRecommendAlbumList localHumanRecommendAlbumList = new HumanRecommendAlbumList();
      localHumanRecommendAlbumList.setAlbumList(localList);
      CommonRequest.access$0().postSuccess(this.val$callback, localHumanRecommendAlbumList);
      return;
    }
    catch (Exception localException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.17
 * JD-Core Version:    0.6.0
 */