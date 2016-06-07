package com.ximalaya.ting.android.opensdk.player.service;

import android.util.Log;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.track.CommonTrackList;
import java.util.List;

class XmPlayListControl$1
  implements IDataCallBack<CommonTrackList>
{
  public void onError(int paramInt, String paramString)
  {
    Log.e("XmPlayListControl", "CommonRequest.getTrackList 获取播放器下一页数据 onError " + paramInt + ", " + paramString);
    XmPlayListControl.access$0(this.this$0, false);
  }

  public void onSuccess(CommonTrackList paramCommonTrackList)
  {
    XmPlayListControl.access$0(this.this$0, false);
    Log.e("XmPlayListControl", "CommonRequest.getTrackList 获取播放器下一页数据");
    if (paramCommonTrackList == null);
    do
    {
      return;
      XmPlayListControl.access$1(this.this$0, paramCommonTrackList.getTotalPage());
    }
    while ((paramCommonTrackList.getTracks() == null) || (paramCommonTrackList.getTracks().size() <= 0));
    XmPlayListControl localXmPlayListControl = this.this$0;
    XmPlayListControl.access$3(localXmPlayListControl, 1 + XmPlayListControl.access$2(localXmPlayListControl));
    synchronized (XmPlayListControl.access$4(this.this$0))
    {
      XmPlayListControl.access$4(this.this$0).addAll(paramCommonTrackList.getTracks());
      XmPlayListControl.access$5(this.this$0, XmPlayListControl.access$4(this.this$0).size());
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayListControl.1
 * JD-Core Version:    0.6.0
 */