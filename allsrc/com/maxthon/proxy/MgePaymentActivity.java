package com.maxthon.proxy;

import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class MgePaymentActivity extends ProxyActivity
{
  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_MGEPAYMENTACTIVITY").get(localClass);
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
    return "com.maxthon.mge.MgePaymentActivity";
  }

  public void wgePay(View paramView)
  {
    try
    {
      this.mClazz.getMethod("wgePay", new Class[] { View.class }).invoke(this.mObj, new Object[] { paramView });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.MgePaymentActivity
 * JD-Core Version:    0.6.0
 */