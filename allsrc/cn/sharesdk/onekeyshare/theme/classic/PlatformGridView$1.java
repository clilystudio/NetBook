package cn.sharesdk.onekeyshare.theme.classic;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.b.j;

class PlatformGridView$1 extends Thread
{
  public void run()
  {
    try
    {
      PlatformGridView.access$002(this.this$0, ShareSDK.getPlatformList());
      if (PlatformGridView.access$000(this.this$0) == null)
        PlatformGridView.access$002(this.this$0, new Platform[0]);
      j.a(1, this.this$0);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.PlatformGridView.1
 * JD-Core Version:    0.6.0
 */