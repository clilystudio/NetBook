package android.support.multidex;

import android.app.Application;
import android.content.Context;

public class MultiDexApplication extends Application
{
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    a.a(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.multidex.MultiDexApplication
 * JD-Core Version:    0.6.0
 */