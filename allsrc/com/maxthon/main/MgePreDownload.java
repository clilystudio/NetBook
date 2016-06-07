package com.maxthon.main;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.maxthon.utils.MResource;
import java.lang.reflect.Field;

public class MgePreDownload
  implements UICallback
{
  private boolean isExistAssetsJar = false;
  private boolean isRequestDependenceLib;
  private ClassLoader mClassLoader;
  private Class mClazz;
  private Context mContext = null;
  private String mFormatMessage;
  private boolean mHasSdk;
  private TextView mMesageTv;
  private Object mObject;
  private int mRetryTimes;

  public MgePreDownload(Context paramContext, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.isRequestDependenceLib = paramBoolean;
    this.mRetryTimes = 3;
  }

  public Context getContext()
  {
    return this.mContext;
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
    int i = MResource.getIdByName(this.mContext, "string", "init_failure_message");
    Toast.makeText(this.mContext, i, 0).show();
  }

  public void onProgressUpdate(int paramInt)
  {
    Log.i("__e7965c__", "MgePreDownload::onProgressUpdate: " + String.valueOf(paramInt) + "%");
  }

  public void onSuccess()
  {
    if (!this.mHasSdk)
    {
      SharedPreferences.Editor localEditor = MgeProperties.getMgeSharedPreferences(this.mContext).edit();
      localEditor.putBoolean(MgeProperties.KEY_HAS_SDK, true);
      localEditor.commit();
    }
  }

  public void start()
  {
    new SelfUpgradeTask(this).execute(new Void[0]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.MgePreDownload
 * JD-Core Version:    0.6.0
 */