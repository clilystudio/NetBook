package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;
import com.arcsoft.hpay100.a.a;

class g
  implements SSOListener
{
  g(f paramf, AuthorizeListener paramAuthorizeListener)
  {
  }

  public void onCancel()
  {
    this.a.onCancel();
  }

  public void onComplete(Bundle paramBundle)
  {
    try
    {
      a.o(paramBundle.getString("expires_in"));
      this.a.onComplete(paramBundle);
      return;
    }
    catch (Throwable localThrowable)
    {
      onFailed(localThrowable);
    }
  }

  public void onFailed(Throwable paramThrowable)
  {
    cn.sharesdk.framework.utils.d.a().w(paramThrowable);
    f.a(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.g
 * JD-Core Version:    0.6.0
 */