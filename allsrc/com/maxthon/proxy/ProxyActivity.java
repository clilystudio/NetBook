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
import java.lang.reflect.Method;

public abstract class ProxyActivity extends Activity
{
  protected ClassLoader mClassLoader;
  protected Class mClazz;
  protected Object mObj;

  public abstract String getTargetClassName();

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
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 72	android/app/Activity:onCreate	(Landroid/os/Bundle;)V
    //   5: invokestatic 78	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   8: aload_0
    //   9: invokevirtual 82	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   12: aload_0
    //   13: invokestatic 78	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   16: invokestatic 78	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   19: ldc 84
    //   21: invokestatic 78	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   24: invokevirtual 87	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   27: invokevirtual 91	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   30: invokevirtual 95	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   33: putfield 97	com/maxthon/proxy/ProxyActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   36: aload_0
    //   37: getfield 97	com/maxthon/proxy/ProxyActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   40: ifnull +63 -> 103
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 97	com/maxthon/proxy/ProxyActivity:mClassLoader	Ljava/lang/ClassLoader;
    //   48: aload_0
    //   49: invokevirtual 99	com/maxthon/proxy/ProxyActivity:getTargetClassName	()Ljava/lang/String;
    //   52: invokevirtual 105	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   55: putfield 24	com/maxthon/proxy/ProxyActivity:mClazz	Ljava/lang/Class;
    //   58: aload_0
    //   59: aload_0
    //   60: getfield 24	com/maxthon/proxy/ProxyActivity:mClazz	Ljava/lang/Class;
    //   63: invokevirtual 109	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   66: putfield 40	com/maxthon/proxy/ProxyActivity:mObj	Ljava/lang/Object;
    //   69: aload_0
    //   70: getfield 24	com/maxthon/proxy/ProxyActivity:mClazz	Ljava/lang/Class;
    //   73: ldc 111
    //   75: iconst_1
    //   76: anewarray 26	java/lang/Class
    //   79: dup
    //   80: iconst_0
    //   81: ldc 113
    //   83: aastore
    //   84: invokevirtual 38	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   87: aload_0
    //   88: getfield 40	com/maxthon/proxy/ProxyActivity:mObj	Ljava/lang/Object;
    //   91: iconst_1
    //   92: anewarray 42	java/lang/Object
    //   95: dup
    //   96: iconst_0
    //   97: aload_0
    //   98: aastore
    //   99: invokevirtual 52	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   102: pop
    //   103: aload_0
    //   104: getfield 24	com/maxthon/proxy/ProxyActivity:mClazz	Ljava/lang/Class;
    //   107: ifnull +44 -> 151
    //   110: aload_0
    //   111: getfield 40	com/maxthon/proxy/ProxyActivity:mObj	Ljava/lang/Object;
    //   114: ifnull +37 -> 151
    //   117: aload_0
    //   118: getfield 24	com/maxthon/proxy/ProxyActivity:mClazz	Ljava/lang/Class;
    //   121: ldc 114
    //   123: iconst_1
    //   124: anewarray 26	java/lang/Class
    //   127: dup
    //   128: iconst_0
    //   129: ldc 116
    //   131: aastore
    //   132: invokevirtual 38	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   135: aload_0
    //   136: getfield 40	com/maxthon/proxy/ProxyActivity:mObj	Ljava/lang/Object;
    //   139: iconst_1
    //   140: anewarray 42	java/lang/Object
    //   143: dup
    //   144: iconst_0
    //   145: aload_1
    //   146: aastore
    //   147: invokevirtual 52	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   150: pop
    //   151: return
    //   152: astore_2
    //   153: aload_2
    //   154: invokevirtual 117	com/maxthon/main/RestartException:printStackTrace	()V
    //   157: ldc 119
    //   159: ldc 121
    //   161: invokestatic 127	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   164: pop
    //   165: ldc 129
    //   167: aload_0
    //   168: invokevirtual 133	com/maxthon/proxy/ProxyActivity:getApplication	()Landroid/app/Application;
    //   171: invokevirtual 137	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   174: checkcast 129	com/maxthon/main/MgeApplication
    //   177: aload_0
    //   178: invokevirtual 140	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   181: return
    //   182: astore 4
    //   184: aload 4
    //   186: invokevirtual 55	java/lang/Exception:printStackTrace	()V
    //   189: goto -86 -> 103
    //   192: astore 5
    //   194: aload 5
    //   196: invokevirtual 55	java/lang/Exception:printStackTrace	()V
    //   199: return
    //
    // Exception table:
    //   from	to	target	type
    //   12	36	152	com/maxthon/main/RestartException
    //   36	103	182	java/lang/Exception
    //   103	151	192	java/lang/Exception
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
      if ((this.mClazz != null) && (this.mObj != null))
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
      Class localClass = this.mClazz;
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getMethod("onWindowFocusChanged", arrayOfClass);
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
 * Qualified Name:     com.maxthon.proxy.ProxyActivity
 * JD-Core Version:    0.6.0
 */