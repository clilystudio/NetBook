package com.maxthon.main;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.maxthon.dex.DexUtils;
import com.maxthon.mge.R.string;
import com.maxthon.proxy.MgeActivity;
import com.maxthon.proxy.MgeWebViewActivity;
import com.maxthon.utils.FileUtil;
import com.maxthon.utils.MResource;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class InitActivity extends Activity
  implements UICallback
{
  private boolean isExistAssetsJar = false;
  private boolean isRequestDependenceLib;
  private ClassLoader mClassLoader;
  private Class mClazz;
  private String mFormatMessage;
  private Handler mHandler;
  private boolean mHasSdk;
  private TextView mMesageTv;
  private Object mObject;
  private ProgressBar mProgressBar;
  private int mRetryTimes;
  private Uri mUri;

  private void prepareMgeApplication()
  {
    DexUtils.getInstance().init(getApplicationContext());
    try
    {
      this.mClassLoader = DexUtils.getInstance().getDexClassLoader(DexUtils.getInstance().getJarFile("plugin_main", DexUtils.getInstance().getJversion()));
    }
    catch (RestartException localRestartException)
    {
      try
      {
        Intent localIntent;
        if (this.mClassLoader != null)
        {
          this.mClazz = this.mClassLoader.loadClass(getTargetClassName());
          this.mObject = this.mClazz.newInstance();
          Method localMethod1 = this.mClazz.getMethod("bindComponentContext", new Class[] { Context.class });
          Object localObject1 = this.mObject;
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = getApplication();
          localMethod1.invoke(localObject1, arrayOfObject1);
          Method localMethod2 = this.mClazz.getMethod("attachBaseContext", new Class[] { Context.class });
          Object localObject2 = this.mObject;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = getApplication();
          localMethod2.invoke(localObject2, arrayOfObject2);
          this.mClazz.getMethod("onCreate", new Class[0]).invoke(this.mObject, new Object[0]);
          localIntent = new Intent();
          if (this.mUri == null)
            break label269;
          localIntent.setClass(getApplicationContext(), MgeActivity.class);
          localIntent.setData(this.mUri);
        }
        while (true)
        {
          startActivity(localIntent);
          return;
          localRestartException = localRestartException;
          localRestartException.printStackTrace();
          Log.i("test_restart", "6");
          ((MgeApplication)MgeApplication.class.cast(getApplication())).restartApp(this);
          break;
          label269: localIntent.setClass(getApplicationContext(), MgeWebViewActivity.class);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public Context getContext()
  {
    return this;
  }

  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_MGEAPPLICATION").get(localClass);
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
    return "com.maxthon.mge.MgeApplication";
  }

  public boolean isRequestDependence()
  {
    return this.isRequestDependenceLib;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.i("test_jar", "init activity onCreate");
    setContentView(MResource.getIdByName(this, "layout", "init_layout"));
    this.mMesageTv = ((TextView)findViewById(MResource.getIdByName(this, "id", "message_tv")));
    this.mFormatMessage = getString(R.string.app_init_message);
    String str = this.mFormatMessage.replace("%n", "0");
    this.mMesageTv.setText(str);
    this.mProgressBar = ((ProgressBar)findViewById(MResource.getIdByName(this, "id", "progressBar")));
    this.mProgressBar.setIndeterminateDrawable(new SmoothProgressDrawable.Builder(this).interpolator(new DecelerateInterpolator()).build());
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.isRequestDependenceLib = localIntent.getBooleanExtra("dependence", true);
      this.mUri = localIntent.getData();
    }
    this.mHasSdk = MgeProperties.getMgeSharedPreferences(this).getBoolean(MgeProperties.KEY_HAS_SDK, false);
    if (this.mHasSdk)
      prepareMgeApplication();
    while (true)
    {
      this.mRetryTimes = 3;
      new SelfUpgradeTask(this).execute(new Void[0]);
      if ((this.mHasSdk) || (this.isExistAssetsJar))
        finish();
      return;
      this.isExistAssetsJar = FileUtil.existAssetsFile(this, "jar");
      if (!this.isExistAssetsJar)
        continue;
      Log.i("test_jar", "找到assets目录下的jar，开始加载");
      prepareMgeApplication();
    }
  }

  public void onFailure(int paramInt)
  {
    if (this.mRetryTimes > 0)
    {
      this.mRetryTimes = (-1 + this.mRetryTimes);
      new SelfUpgradeTask(this).execute(new Void[0]);
    }
    do
      return;
    while (this.mHasSdk);
    Toast.makeText(this, MResource.getIdByName(this, "string", "init_failure_message"), 0).show();
  }

  public void onProgressUpdate(int paramInt)
  {
    if (!this.mHasSdk)
    {
      String str = this.mFormatMessage.replace("%n", paramInt);
      this.mMesageTv.setText(str);
    }
  }

  public void onSuccess()
  {
    if (!this.mHasSdk)
    {
      SharedPreferences.Editor localEditor = MgeProperties.getMgeSharedPreferences(this).edit();
      localEditor.putBoolean(MgeProperties.KEY_HAS_SDK, true);
      localEditor.commit();
      try
      {
        DexUtils.getInstance().setClassLoader(this, DexUtils.getInstance().getJarFile("plugin_main", DexUtils.getInstance().getJversion()));
        this.mClassLoader = DexUtils.getInstance().getDexClassLoader(DexUtils.getInstance().getJarFile("plugin_main", DexUtils.getInstance().getJversion()));
        this.mClazz = this.mClassLoader.loadClass(getTargetClassName());
        this.mObject = this.mClazz.newInstance();
        Method localMethod1 = this.mClazz.getMethod("bindComponentContext", new Class[] { Context.class });
        Object localObject1 = this.mObject;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = getApplication();
        localMethod1.invoke(localObject1, arrayOfObject1);
        Method localMethod2 = this.mClazz.getMethod("attachBaseContext", new Class[] { Context.class });
        Object localObject2 = this.mObject;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = getApplication();
        localMethod2.invoke(localObject2, arrayOfObject2);
        this.mClazz.getMethod("onCreate", new Class[0]).invoke(this.mObject, new Object[0]);
        Intent localIntent = new Intent();
        if (this.mUri != null)
        {
          localIntent.setClass(getApplicationContext(), MgeActivity.class);
          localIntent.setData(this.mUri);
        }
        while (true)
        {
          startActivity(localIntent);
          finish();
          return;
          localIntent.setClass(getApplicationContext(), MgeWebViewActivity.class);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.InitActivity
 * JD-Core Version:    0.6.0
 */