package cn.sharesdk.onekeyshare;

import android.os.Handler.Callback;
import android.os.Message;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import com.mob.tools.b.j;

public class ReflectableShareContentCustomizeCallback
  implements ShareContentCustomizeCallback
{
  private Handler.Callback onShareCallback;
  private int onShareWhat;

  public void onShare(Platform paramPlatform, Platform.ShareParams paramShareParams)
  {
    if (this.onShareCallback != null)
    {
      Message localMessage = new Message();
      localMessage.what = this.onShareWhat;
      localMessage.obj = new Object[] { paramPlatform, paramShareParams };
      j.a(localMessage, this.onShareCallback);
    }
  }

  public void setOnShareCallback(int paramInt, Handler.Callback paramCallback)
  {
    this.onShareWhat = paramInt;
    this.onShareCallback = paramCallback;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.ReflectableShareContentCustomizeCallback
 * JD-Core Version:    0.6.0
 */