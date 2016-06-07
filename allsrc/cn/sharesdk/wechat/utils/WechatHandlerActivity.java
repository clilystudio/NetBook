package cn.sharesdk.wechat.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class WechatHandlerActivity extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    setTheme(16973839);
    super.onCreate(paramBundle);
    try
    {
      WechatHelper.a().a(this);
      finish();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void onGetMessageFromWXReq(WXMediaMessage paramWXMediaMessage)
  {
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    try
    {
      WechatHelper.a().a(this);
      finish();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void onShowMessageFromWXReq(WXMediaMessage paramWXMediaMessage)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WechatHandlerActivity
 * JD-Core Version:    0.6.0
 */