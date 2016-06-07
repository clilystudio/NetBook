package cn.sharesdk.sina.weibo;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.IBinder;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.f;
import java.lang.reflect.Method;

public class e extends f
  implements ServiceConnection
{
  private String d;
  private String e;
  private String[] f;

  public e(cn.sharesdk.framework.authorize.e parame)
  {
    super(parame);
  }

  private boolean a(String paramString1, String paramString2)
  {
    int i = 1;
    Intent localIntent = new Intent();
    localIntent.setClassName(paramString1, paramString2);
    localIntent.putExtra("appKey", this.d);
    localIntent.putExtra("redirectUri", this.e);
    if ((this.f != null) && (this.f.length > 0))
      localIntent.putExtra("scope", TextUtils.join(",", this.f));
    if (!b(localIntent))
      return false;
    try
    {
      this.a.startActivityForResult(localIntent, this.b);
      this.a.getContext().getApplicationContext().unbindService(this);
      return i;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        i = 0;
    }
  }

  private boolean b(Intent paramIntent)
  {
    ResolveInfo localResolveInfo = this.a.getContext().getPackageManager().resolveActivity(paramIntent, 0);
    if (localResolveInfo == null);
    while (true)
    {
      return false;
      String str = localResolveInfo.activityInfo.packageName;
      try
      {
        Signature[] arrayOfSignature = this.a.getContext().getPackageManager().getPackageInfo(str, 64).signatures;
        int i = arrayOfSignature.length;
        for (int j = 0; j < i; j++)
        {
          boolean bool = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4".equals(arrayOfSignature[j].toCharsString());
          if (bool)
            return true;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    }
    return false;
  }

  private void c(Intent paramIntent)
  {
    if (this.c == null)
      return;
    String str1 = paramIntent.getStringExtra("error");
    if (str1 == null)
      str1 = paramIntent.getStringExtra("error_type");
    if (str1 == null)
    {
      this.c.onComplete(paramIntent.getExtras());
      return;
    }
    if ((str1.equals("access_denied")) || (str1.equals("OAuthAccessDeniedException")))
    {
      this.c.onCancel();
      return;
    }
    String str2 = paramIntent.getStringExtra("error_description");
    if (str2 != null)
      str1 = str1 + ": " + str2;
    this.c.onFailed(new Throwable(str1));
  }

  private void d(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str = paramIntent.getStringExtra("error");
      int i = paramIntent.getIntExtra("error_code", -1);
      Throwable localThrowable = new Throwable(str + " (" + i + ")");
      if (this.c != null)
        this.c.onFailed(localThrowable);
    }
    do
      return;
    while (this.c == null);
    this.c.onCancel();
  }

  public void a()
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.sina.weibo", "com.sina.weibo.business.RemoteSSOService");
    if (!this.a.getContext().getApplicationContext().bindService(localIntent, this, 1))
    {
      this.a.finish();
      if (this.c != null)
        this.c.onFailed(new Throwable());
    }
  }

  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.a.finish();
    if (paramInt1 == this.b);
    switch (paramInt2)
    {
    default:
      return;
    case -1:
      c(paramIntent);
      return;
    case 0:
    }
    d(paramIntent);
  }

  public void a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramArrayOfString;
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Class localClass = Class.forName("com.sina.sso.RemoteSSO$Stub");
      Method localMethod1 = localClass.getMethod("asInterface", new Class[] { IBinder.class });
      localMethod1.setAccessible(true);
      Object localObject = localMethod1.invoke(null, new Object[] { paramIBinder });
      Method localMethod2 = localClass.getMethod("getPackageName", new Class[0]);
      localMethod2.setAccessible(true);
      String str = String.valueOf(localMethod2.invoke(localObject, new Object[0]));
      Method localMethod3 = localClass.getMethod("getActivityName", new Class[0]);
      localMethod3.setAccessible(true);
      if (!a(str, String.valueOf(localMethod3.invoke(localObject, new Object[0]))))
      {
        this.a.finish();
        if (this.c != null)
          this.c.onFailed(new Throwable());
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      do
        this.a.finish();
      while (this.c == null);
      this.c.onFailed(localThrowable);
    }
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.a.finish();
    if (this.c != null)
      this.c.onFailed(new Throwable());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.e
 * JD-Core Version:    0.6.0
 */