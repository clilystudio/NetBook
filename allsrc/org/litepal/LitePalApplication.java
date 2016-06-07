package org.litepal;

import android.app.Application;
import android.content.Context;
import org.litepal.exceptions.GlobalException;

public class LitePalApplication extends Application
{
  private static Context a;

  public LitePalApplication()
  {
    a = this;
  }

  public static Context a()
  {
    if (a == null)
      throw new GlobalException("Application context is null. Maybe you haven't configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml. Or you can call LitePalApplication.initialize(Context) method instead.");
    return a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.LitePalApplication
 * JD-Core Version:    0.6.0
 */