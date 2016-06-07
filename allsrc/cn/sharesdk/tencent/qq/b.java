package cn.sharesdk.tencent.qq;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

class b
  implements PlatformActionListener
{
  b(QQ paramQQ, Platform.ShareParams paramShareParams)
  {
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    if (QQ.p(this.b) != null)
      QQ.q(this.b).onCancel(this.b, 9);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramHashMap != null)
      localHashMap.putAll(paramHashMap);
    localHashMap.put("ShareParams", this.a);
    if (QQ.n(this.b) != null)
      QQ.o(this.b).onComplete(this.b, 9, localHashMap);
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    if (QQ.l(this.b) != null)
      QQ.m(this.b).onError(this.b, 9, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.b
 * JD-Core Version:    0.6.0
 */