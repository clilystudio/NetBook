package cn.sharesdk.framework.authorize;

import android.app.Instrumentation;

class i extends Thread
{
  i(h paramh)
  {
  }

  public void run()
  {
    try
    {
      new Instrumentation().sendKeyDownUpSync(4);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      AuthorizeListener localAuthorizeListener = this.a.a.a.getAuthorizeListener();
      if (localAuthorizeListener != null)
        localAuthorizeListener.onCancel();
      this.a.a.finish();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.i
 * JD-Core Version:    0.6.0
 */