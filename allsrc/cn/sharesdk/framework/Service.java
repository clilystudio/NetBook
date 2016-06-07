package cn.sharesdk.framework;

import android.content.Context;
import com.mob.tools.b.a;

public abstract class Service
{
  private Context a;
  private String b;

  void a(Context paramContext)
  {
    this.a = paramContext;
  }

  void a(String paramString)
  {
    this.b = paramString;
  }

  public String getAppKey()
  {
    return this.b;
  }

  public Context getContext()
  {
    return this.a;
  }

  public String getDeviceKey()
  {
    return a.a(this.a).j();
  }

  protected abstract int getServiceVersionInt();

  public abstract String getServiceVersionName();

  public void onBind()
  {
  }

  public void onUnbind()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.Service
 * JD-Core Version:    0.6.0
 */