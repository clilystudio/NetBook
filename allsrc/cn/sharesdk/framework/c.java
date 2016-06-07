package cn.sharesdk.framework;

import java.util.HashMap;

class c
  implements PlatformActionListener
{
  c(a parama, PlatformActionListener paramPlatformActionListener, int paramInt, Object paramObject)
  {
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    a.a(this.d, this.a);
    if (a.a(this.d) != null)
      a.a(this.d).onCancel(paramPlatform, this.b);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    a.a(this.d, this.a);
    paramPlatform.afterRegister(this.b, this.c);
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    a.a(this.d, this.a);
    if (a.a(this.d) != null)
      a.a(this.d).onError(paramPlatform, paramInt, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.c
 * JD-Core Version:    0.6.0
 */