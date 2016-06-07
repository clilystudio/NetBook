package com.maxthon.proxy;

import java.lang.reflect.Method;

public class GeneralActivity extends ProxyActivity
{
  public String getTargetClassName()
  {
    try
    {
      Object localObject = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant").getMethod("getTargetComponentName", new Class[0]).invoke(null, new Object[0]);
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
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.GeneralActivity
 * JD-Core Version:    0.6.0
 */