package cn.sharesdk.tencent.qq;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.mob.tools.b.e;
import java.util.HashMap;

public class h extends com.mob.tools.a
{
  private String a;
  private Platform b;
  private PlatformActionListener c;

  public void a(Platform paramPlatform, PlatformActionListener paramPlatformActionListener)
  {
    this.b = paramPlatform;
    this.c = paramPlatformActionListener;
  }

  public void a(String paramString)
  {
    this.a = paramString;
  }

  public void onCreate()
  {
    try
    {
      Intent localIntent = this.activity.getIntent();
      String str1 = localIntent.getScheme();
      finish();
      if ((str1 == null) || (!str1.startsWith(this.a)))
        return;
      Bundle localBundle = com.arcsoft.hpay100.a.a.l(localIntent.getDataString());
      String str2 = String.valueOf(localBundle.get("result"));
      String str3 = String.valueOf(localBundle.get("action"));
      if ((!"shareToQQ".equals(str3)) && (!"shareToQzone".equals(str3)))
        return;
      if ("complete".equals(str2))
      {
        if (this.c == null)
          return;
        String str4 = String.valueOf(localBundle.get("response"));
        HashMap localHashMap = new e().a(str4);
        this.c.onComplete(this.b, 9, localHashMap);
        return;
      }
      if ("error".equals(str2))
      {
        if (this.c == null)
          return;
        Throwable localThrowable2 = new Throwable(String.valueOf(localBundle.get("response")));
        this.c.onError(this.b, 9, localThrowable2);
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
      return;
    }
    if (this.c != null)
      this.c.onCancel(this.b, 9);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.h
 * JD-Core Version:    0.6.0
 */