package cn.sharesdk.tencent.qzone;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.e;
import cn.sharesdk.framework.authorize.f;
import org.json.JSONObject;

public class h extends f
{
  private String d;
  private String e;

  public h(e parame)
  {
    super(parame);
  }

  public void a()
  {
    String str = "com.tencent.mobileqq";
    do
    {
      Intent localIntent;
      do
      {
        try
        {
          PackageInfo localPackageInfo2 = this.a.getContext().getPackageManager().getPackageInfo(str, 0);
          localObject = localPackageInfo2;
          if (localObject == null)
          {
            this.a.finish();
            if (this.c != null)
              this.c.onFailed(new TencentSSOClientNotInstalledException());
            return;
          }
        }
        catch (Throwable localThrowable1)
        {
          do
            while (true)
            {
              Object localObject;
              str = "com.qzone";
              try
              {
                PackageInfo localPackageInfo1 = this.a.getContext().getPackageManager().getPackageInfo("com.qzone", 0);
                localObject = localPackageInfo1;
              }
              catch (Throwable localThrowable2)
              {
                this.a.finish();
              }
            }
          while (this.c == null);
          this.c.onFailed(new TencentSSOClientNotInstalledException());
          return;
        }
        localIntent = new Intent();
        localIntent.setClassName(str, "com.tencent.open.agent.AgentActivity");
        if (this.a.getContext().getPackageManager().resolveActivity(localIntent, 0) != null)
          break;
        this.a.finish();
      }
      while (this.c == null);
      this.c.onFailed(new TencentSSOClientNotInstalledException());
      return;
      Bundle localBundle = new Bundle();
      localBundle.putString("scope", this.e);
      localBundle.putString("client_id", this.d);
      localBundle.putString("pf", "openmobile_android");
      localBundle.putString("need_pay", "1");
      localIntent.putExtra("key_params", localBundle);
      localIntent.putExtra("key_request_code", this.b);
      localIntent.putExtra("key_action", "action_login");
      try
      {
        this.a.startActivityForResult(localIntent, this.b);
        return;
      }
      catch (Throwable localThrowable3)
      {
        this.a.finish();
      }
    }
    while (this.c == null);
    this.c.onFailed(localThrowable3);
  }

  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.a.finish();
    if (paramInt2 == 0)
      if (this.c != null)
        this.c.onCancel();
    do
      while (true)
      {
        return;
        if (paramIntent == null)
        {
          if (this.c == null)
            continue;
          this.c.onFailed(new Throwable("response is empty"));
          return;
        }
        Bundle localBundle1 = paramIntent.getExtras();
        if (localBundle1 == null)
        {
          if (this.c == null)
            continue;
          this.c.onFailed(new Throwable("response is empty"));
          return;
        }
        if (!localBundle1.containsKey("key_response"))
        {
          if (this.c == null)
            continue;
          this.c.onFailed(new Throwable("response is empty"));
          return;
        }
        String str = localBundle1.getString("key_response");
        if ((str == null) || (str.length() <= 0))
        {
          if (this.c == null)
            continue;
          this.c.onFailed(new Throwable("response is empty"));
          return;
        }
        try
        {
          JSONObject localJSONObject = new JSONObject(str);
          Bundle localBundle2 = new Bundle();
          localBundle2.putInt("ret", localJSONObject.optInt("ret"));
          localBundle2.putString("pay_token", localJSONObject.optString("pay_token"));
          localBundle2.putString("pf", localJSONObject.optString("pf"));
          localBundle2.putString("open_id", localJSONObject.optString("openid"));
          localBundle2.putString("expires_in", localJSONObject.optString("expires_in"));
          localBundle2.putString("pfkey", localJSONObject.optString("pfkey"));
          localBundle2.putString("msg", localJSONObject.optString("msg"));
          localBundle2.putString("access_token", localJSONObject.optString("access_token"));
          if (this.c == null)
            continue;
          this.c.onComplete(localBundle2);
          return;
        }
        catch (Throwable localThrowable)
        {
        }
      }
    while (this.c == null);
    this.c.onFailed(localThrowable);
  }

  public void a(String paramString1, String paramString2)
  {
    this.d = paramString1;
    this.e = paramString2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.h
 * JD-Core Version:    0.6.0
 */