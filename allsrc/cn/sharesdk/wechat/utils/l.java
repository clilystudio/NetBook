package cn.sharesdk.wechat.utils;

import android.os.Handler.Callback;
import android.os.Message;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.mob.tools.b.a;
import com.mob.tools.b.j;
import java.util.HashMap;

class l
  implements Handler.Callback
{
  int a = 0;

  l(WechatHelper paramWechatHelper, a parama, String paramString, PlatformActionListener paramPlatformActionListener, Platform paramPlatform, HashMap paramHashMap)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    String str = this.b.o();
    if (!this.c.equals(str))
      if (this.d != null)
        this.d.onComplete(this.e, 9, this.f);
    while (true)
    {
      return true;
      if (this.a >= 5)
        continue;
      this.a = (1 + this.a);
      j.a(0, 500L, this);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.l
 * JD-Core Version:    0.6.0
 */