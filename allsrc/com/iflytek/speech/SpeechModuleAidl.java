package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.b.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

abstract class SpeechModuleAidl<I extends IInterface>
  implements ISpeechModule
{
  private String mBindAction = null;
  private ServiceConnection mConnection = null;
  protected Context mContext = null;
  private InitListener mInitListener = null;
  private HashMap<String, String> mParams = new HashMap();
  protected I mService;
  protected Object mSynLock = new Object();
  private Handler mUiHandler = new SpeechModuleAidl.2(this, Looper.getMainLooper());
  private volatile boolean userDestroy = false;

  public SpeechModuleAidl(Context paramContext, InitListener paramInitListener, String paramString)
  {
    this.mContext = paramContext;
    this.mInitListener = paramInitListener;
    this.mBindAction = paramString;
    bindService();
  }

  private void bindService()
  {
    if (!isActionInstalled(this.mContext, this.mBindAction))
    {
      if (this.mInitListener != null)
        Message.obtain(this.mUiHandler, 21001, 0, 0, null).sendToTarget();
      return;
    }
    Intent localIntent = getIntent();
    localIntent.setAction(this.mBindAction);
    localIntent.setPackage("com.iflytek.vflynote");
    this.mConnection = new SpeechModuleAidl.1(this);
    this.mContext.bindService(localIntent, this.mConnection, 1);
  }

  private I getService(IBinder paramIBinder)
  {
    try
    {
      String str = ((Class)((java.lang.reflect.ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0]).getName();
      Log.d(getTag(), "className = " + str);
      IInterface localIInterface = (IInterface)Class.forName(str + "$Stub").getDeclaredMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { paramIBinder });
      return localIInterface;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return null;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public boolean destory()
  {
    Log.d(getTag(), "destory");
    try
    {
      this.userDestroy = true;
      if (this.mConnection != null)
      {
        this.mContext.unbindService(this.mConnection);
        this.mConnection = null;
      }
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
    }
    return false;
  }

  public Intent getIntent()
  {
    Intent localIntent = new Intent();
    if (!this.mParams.isEmpty())
    {
      Iterator localIterator1 = this.mParams.keySet().iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        localIntent.putExtra(str2, (String)this.mParams.get(str2));
      }
      HashMap localHashMap = new a((String)this.mParams.get("params"), null).c();
      if ((localHashMap != null) && (!localHashMap.isEmpty()))
      {
        Iterator localIterator2 = localHashMap.keySet().iterator();
        while (localIterator2.hasNext())
        {
          String str1 = (String)localIterator2.next();
          localIntent.putExtra(str1, (String)localHashMap.get(str1));
        }
      }
    }
    localIntent.putExtra("caller.appid", SpeechUtility.getUtility().getParameter("appid"));
    localIntent.putExtra("caller.name", UtilityConfig.getCallerInfo(this.mContext, "caller.name"));
    localIntent.putExtra("caller.pkg", UtilityConfig.getCallerInfo(this.mContext, "caller.pkg"));
    localIntent.putExtra("caller.ver.name", UtilityConfig.getCallerInfo(this.mContext, "caller.ver.name"));
    localIntent.putExtra("caller.ver.code", UtilityConfig.getCallerInfo(this.mContext, "caller.ver.code"));
    return localIntent;
  }

  public String getParameter(String paramString)
  {
    return (String)this.mParams.get(paramString);
  }

  protected final String getTag()
  {
    return getClass().toString();
  }

  public boolean isActionInstalled(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)));
    do
      return false;
    while (paramContext.getPackageManager().resolveService(new Intent(paramString), 0) == null);
    return true;
  }

  public boolean isAvailable()
  {
    return this.mService != null;
  }

  public int setParameter(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return 20012;
    if (TextUtils.isEmpty(paramString2))
    {
      this.mParams.remove(paramString1);
      return 0;
    }
    this.mParams.put(paramString1, paramString2);
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechModuleAidl
 * JD-Core Version:    0.6.0
 */