package com.maxthon.proxy;

import java.lang.reflect.Field;

public class CocosPlayGameRunnerActivity extends ProxyActivity
{
  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_COCOSPLAYGAMERUNNERACTIVITY").get(localClass);
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
    return "com.maxthon.mge.CocosPlayGameRunnerActivity";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.CocosPlayGameRunnerActivity
 * JD-Core Version:    0.6.0
 */