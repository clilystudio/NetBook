package com.maxthon.proxy;

import android.os.Bundle;
import java.lang.reflect.Field;

public class MgeWebViewActivity extends ProxyActivity
{
  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_MGEWEBVIEWACTIVITY").get(localClass);
      if ((localObject instanceof String))
      {
        String str = (String)String.class.cast(localObject);
        return str;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "com.maxthon.mge.MgeWebViewActivity";
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.MgeWebViewActivity
 * JD-Core Version:    0.6.0
 */