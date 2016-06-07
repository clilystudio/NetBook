package com.ushaqi.zhuishushenqi.reader;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.ushaqi.zhuishushenqi.util.e;
import java.util.HashMap;

final class ba
  implements PlatformActionListener
{
  ba(ReaderActivity paramReaderActivity)
  {
  }

  public final void onCancel(Platform paramPlatform, int paramInt)
  {
  }

  public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    e.c("share_book");
  }

  public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ba
 * JD-Core Version:    0.6.0
 */