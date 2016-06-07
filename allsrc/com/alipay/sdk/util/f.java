package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.app.IRemoteServiceCallback.Stub;
import java.lang.ref.WeakReference;

final class f extends IRemoteServiceCallback.Stub
{
  f(d paramd)
  {
  }

  public final boolean isHideLoadingScreen()
  {
    return false;
  }

  public final void payEnd(boolean paramBoolean, String paramString)
  {
  }

  public final void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    if (paramBundle == null)
      paramBundle = new Bundle();
    try
    {
      paramBundle.putInt("CallingPid", paramInt);
      localIntent.putExtras(paramBundle);
      label42: localIntent.setClassName(paramString1, paramString2);
      ((Activity)d.b(this.a).get()).startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      break label42;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.f
 * JD-Core Version:    0.6.0
 */