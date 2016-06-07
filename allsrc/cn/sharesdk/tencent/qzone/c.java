package cn.sharesdk.tencent.qzone;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

class c
  implements PlatformActionListener
{
  c(QZone paramQZone, Platform.ShareParams paramShareParams)
  {
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    if (QZone.p(this.b) != null)
      QZone.q(this.b).onCancel(this.b, 9);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    if (QZone.n(this.b) != null)
    {
      paramHashMap.put("ShareParams", this.a);
      QZone.o(this.b).onComplete(this.b, 9, paramHashMap);
    }
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    if (QZone.l(this.b) != null)
      QZone.m(this.b).onError(this.b, 9, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.c
 * JD-Core Version:    0.6.0
 */