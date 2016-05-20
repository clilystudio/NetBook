package com.clilystudio.app.netbook.ui.post;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.app.netbook.util.e;
import java.util.HashMap;

final class cu
  implements PlatformActionListener
{
  cu(PostDetailActivity paramPostDetailActivity)
  {
  }

  public final void onCancel(Platform paramPlatform, int paramInt)
  {
  }

  public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    e.c("share");
  }

  public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cu
 * JD-Core Version:    0.6.2
 */