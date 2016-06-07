package cn.sharesdk.framework.authorize;

import android.os.Bundle;

public abstract interface SSOListener
{
  public abstract void onCancel();

  public abstract void onComplete(Bundle paramBundle);

  public abstract void onFailed(Throwable paramThrowable);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.SSOListener
 * JD-Core Version:    0.6.0
 */