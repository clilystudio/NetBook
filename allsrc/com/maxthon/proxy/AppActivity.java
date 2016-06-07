package com.maxthon.proxy;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class AppActivity extends Activity
{
  private ClassLoader mClassLoader;
  private Class mClazz;
  private Object mObj;

  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_APPACTIVITY").get(localClass);
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
    return "org.cocos2dx.javascript.AppActivity";
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    try
    {
      Class localClass = this.mClazz;
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = Intent.class;
      Method localMethod = localClass.getMethod("onActivityResult", arrayOfClass);
      Object localObject = this.mObj;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = paramIntent;
      localMethod.invoke(localObject, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    try
    {
      this.mClazz.getMethod("onBackPressed", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    try
    {
      this.mClazz.getMethod("onConfigurationChanged", new Class[] { Configuration.class }).invoke(this.mObj, new Object[] { paramConfiguration });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  protected void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 105	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   3: aload_0
    //   4: invokevirtual 109	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   7: aload_0
    //   8: invokestatic 105	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   11: invokestatic 105	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   14: ldc 111
    //   16: invokestatic 105	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   19: invokevirtual 114	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   22: invokevirtual 118	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   25: invokevirtual 122	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   28: putfield 20	com/maxthon/proxy/AppActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   31: aload_0
    //   32: getfield 20	com/maxthon/proxy/AppActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   35: ifnull +97 -> 132
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 20	com/maxthon/proxy/AppActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   43: aload_0
    //   44: invokevirtual 124	com/maxthon/proxy/AppActivity:getTargetClassName	()Ljava/lang/String;
    //   47: invokevirtual 28	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   50: putfield 58	com/maxthon/proxy/AppActivity:mClazz	Ljava/lang/Class;
    //   53: aload_0
    //   54: aload_0
    //   55: getfield 58	com/maxthon/proxy/AppActivity:mClazz	Ljava/lang/Class;
    //   58: invokevirtual 128	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   61: putfield 72	com/maxthon/proxy/AppActivity:mObj	Ljava/lang/Object;
    //   64: aload_0
    //   65: getfield 58	com/maxthon/proxy/AppActivity:mClazz	Ljava/lang/Class;
    //   68: ldc 130
    //   70: iconst_1
    //   71: anewarray 32	java/lang/Class
    //   74: dup
    //   75: iconst_0
    //   76: ldc 132
    //   78: aastore
    //   79: invokevirtual 70	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   82: aload_0
    //   83: getfield 72	com/maxthon/proxy/AppActivity:mObj	Ljava/lang/Object;
    //   86: iconst_1
    //   87: anewarray 74	java/lang/Object
    //   90: dup
    //   91: iconst_0
    //   92: aload_0
    //   93: aastore
    //   94: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   97: pop
    //   98: aload_0
    //   99: getfield 58	com/maxthon/proxy/AppActivity:mClazz	Ljava/lang/Class;
    //   102: ldc 133
    //   104: iconst_1
    //   105: anewarray 32	java/lang/Class
    //   108: dup
    //   109: iconst_0
    //   110: ldc 135
    //   112: aastore
    //   113: invokevirtual 70	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   116: aload_0
    //   117: getfield 72	com/maxthon/proxy/AppActivity:mObj	Ljava/lang/Object;
    //   120: iconst_1
    //   121: anewarray 74	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: aload_1
    //   127: aastore
    //   128: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: aload_0
    //   133: aload_1
    //   134: invokespecial 137	android/app/Activity:onCreate	(Landroid/os/Bundle;)V
    //   137: return
    //   138: astore_2
    //   139: aload_2
    //   140: invokevirtual 138	com/maxthon/main/RestartException:printStackTrace	()V
    //   143: ldc 140
    //   145: ldc 142
    //   147: invokestatic 148	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: ldc 150
    //   153: aload_0
    //   154: invokevirtual 154	com/maxthon/proxy/AppActivity:getApplication	()Landroid/app/Application;
    //   157: invokevirtual 47	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   160: checkcast 150	com/maxthon/main/MgeApplication
    //   163: aload_0
    //   164: invokevirtual 157	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   167: return
    //   168: astore 4
    //   170: aload 4
    //   172: invokevirtual 50	java/lang/Exception:printStackTrace	()V
    //   175: goto -43 -> 132
    //
    // Exception table:
    //   from	to	target	type
    //   7	31	138	com/maxthon/main/RestartException
    //   31	132	168	java/lang/Exception
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("onCreateOptionsMenu", new Class[] { Menu.class }).invoke(this.mObj, new Object[] { paramMenu });
      if (localObject != null)
        return ((Boolean)localObject).booleanValue();
      boolean bool = super.onCreateOptionsMenu(paramMenu);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onCreateOptionsMenu(paramMenu);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    try
    {
      this.mClazz.getMethod("onDestroy", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      Class localClass = this.mClazz;
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = KeyEvent.class;
      Method localMethod = localClass.getMethod("onKeyDown", arrayOfClass);
      Object localObject1 = this.mObj;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = paramKeyEvent;
      Object localObject2 = localMethod.invoke(localObject1, arrayOfObject);
      if (localObject2 != null)
        return ((Boolean)localObject2).booleanValue();
      boolean bool = super.onKeyDown(paramInt, paramKeyEvent);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      Class localClass = this.mClazz;
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = KeyEvent.class;
      Method localMethod = localClass.getMethod("onKeyUp", arrayOfClass);
      Object localObject1 = this.mObj;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = paramKeyEvent;
      Object localObject2 = localMethod.invoke(localObject1, arrayOfObject);
      if (localObject2 != null)
        return ((Boolean)localObject2).booleanValue();
      boolean bool = super.onKeyUp(paramInt, paramKeyEvent);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    try
    {
      this.mClazz.getMethod("onLowMemory", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    try
    {
      this.mClazz.getMethod("onNewIntent", new Class[] { Intent.class }).invoke(this.mObj, new Object[] { paramIntent });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    try
    {
      this.mClazz.getMethod("onOptionsItemSelected", new Class[] { MenuItem.class }).invoke(this.mObj, new Object[] { paramMenuItem });
      return super.onOptionsItemSelected(paramMenuItem);
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  protected void onPause()
  {
    super.onPause();
    try
    {
      this.mClazz.getMethod("onPause", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onRestart()
  {
    super.onRestart();
    try
    {
      this.mClazz.getMethod("onRestart", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    try
    {
      this.mClazz.getMethod("onRestoreInstanceState", new Class[] { Bundle.class }).invoke(this.mObj, new Object[] { paramBundle });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onResume()
  {
    super.onResume();
    try
    {
      this.mClazz.getMethod("onResume", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    try
    {
      this.mClazz.getMethod("onSaveInstanceState", new Class[] { Bundle.class }).invoke(this.mObj, new Object[] { paramBundle });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onStart()
  {
    super.onStart();
    try
    {
      this.mClazz.getMethod("onStart", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onStop()
  {
    super.onStop();
    try
    {
      this.mClazz.getMethod("onStop", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("onTouchEvent", new Class[] { MotionEvent.class }).invoke(this.mObj, new Object[] { paramMotionEvent });
      if (localObject != null)
        return ((Boolean)localObject).booleanValue();
      boolean bool = super.onTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onTouchEvent(paramMotionEvent);
  }

  public void onWindowAttributesChanged(WindowManager.LayoutParams paramLayoutParams)
  {
    super.onWindowAttributesChanged(paramLayoutParams);
    try
    {
      this.mClazz.getMethod("onWindowAttributesChanged", new Class[] { WindowManager.LayoutParams.class }).invoke(this.mObj, new Object[] { paramLayoutParams });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    try
    {
      Method localMethod = this.mClazz.getMethod("onWindowFocusChanged", new Class[] { Boolean.class });
      Object localObject = this.mObj;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(localObject, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.AppActivity
 * JD-Core Version:    0.6.0
 */