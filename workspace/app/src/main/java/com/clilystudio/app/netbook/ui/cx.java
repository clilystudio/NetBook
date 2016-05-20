package com.clilystudio.app.netbook.ui;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

final class cx
  implements PlatformActionListener
{
  cx(cw paramcw)
  {
  }

  public final void onCancel(Platform paramPlatform, int paramInt)
  {
    cw.a(this.a, "fail");
  }

  public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    cw.a(this.a, "success");
  }

  public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    cw.a(this.a, "fail");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cx
 * JD-Core Version:    0.6.2
 */