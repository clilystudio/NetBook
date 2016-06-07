package com.ushaqi.zhuishushenqi.ui;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.util.e;
import java.util.HashMap;

final class cg
  implements PlatformActionListener
{
  cg(ShareRemoveAdActivity paramShareRemoveAdActivity)
  {
  }

  public final void onCancel(Platform paramPlatform, int paramInt)
  {
  }

  public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    e.a(this.a, "分享完成!");
    b.a(this.a, "share_remove_ad_count");
  }

  public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.cg
 * JD-Core Version:    0.6.0
 */