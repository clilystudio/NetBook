package cn.sharesdk.tencent.qq;

import android.app.Instrumentation;
import cn.sharesdk.framework.PlatformActionListener;

class m extends Thread
{
  m(l paraml)
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
      this.a.a.finish();
      k.a(this.a.a).onCancel(null, 0);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.m
 * JD-Core Version:    0.6.0
 */