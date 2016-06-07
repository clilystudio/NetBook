package com.activeandroid.app;

import com.activeandroid.ActiveAndroid;

public class Application extends android.app.Application
{
  public void onCreate()
  {
    super.onCreate();
    ActiveAndroid.initialize(this);
  }

  public void onTerminate()
  {
    super.onTerminate();
    ActiveAndroid.dispose();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.app.Application
 * JD-Core Version:    0.6.0
 */