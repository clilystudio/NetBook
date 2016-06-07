package com.iflytek.cloud;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.iflytek.cloud.a.a.a.a;
import com.iflytek.speech.SpeechComponent;
import com.iflytek.speech.UtilityConfig;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class SpeechUtility extends com.iflytek.cloud.a.a.a
{
  public static final String TAG_RESOURCE_CONTENT = "tag_rescontent";
  public static final String TAG_RESOURCE_RESULT = "result";
  public static final String TAG_RESOURCE_RET = "ret";
  private static SpeechUtility c = null;
  protected a.a a = a.a.c;
  private ArrayList<SpeechComponent> d = new ArrayList();
  private int e = -1;
  private Context f = null;
  private boolean g = false;
  private SpeechUtility.a h = null;

  private SpeechUtility(Context paramContext, String paramString)
  {
    this.f = paramContext.getApplicationContext();
    super.setParameter("params", paramString);
    setParameter("params", paramString);
    this.a = a.a.b;
    b();
    c();
    try
    {
      com.iflytek.common.a.a(paramContext, "appid", this.b.d("appid"));
      com.iflytek.common.a.a(paramContext);
      com.iflytek.common.a.a(false);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      PackageManager localPackageManager = this.f.getPackageManager();
      Intent localIntent = new Intent(paramString);
      localIntent.setPackage("com.iflytek.vflynote");
      List localList = localPackageManager.queryIntentServices(localIntent, 224);
      if ((localList == null) || (localList.size() <= 0))
        continue;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
        SpeechComponent localSpeechComponent = b(localResolveInfo.serviceInfo.packageName);
        if (localSpeechComponent == null)
          continue;
        try
        {
          String[] arrayOfString = localResolveInfo.serviceInfo.metaData.getString("enginetype").split(",");
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
            localSpeechComponent.addEngine(arrayOfString[j]);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }

  private static boolean a(Context paramContext)
  {
    try
    {
      int i = Process.myPid();
      ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
      if (localActivityManager != null)
      {
        Iterator localIterator = localActivityManager.getRunningAppProcesses().iterator();
        while (localIterator.hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
          if (localRunningAppProcessInfo.pid != i)
            continue;
          com.iflytek.cloud.a.b.a.a.a("process name:" + localRunningAppProcessInfo.processName);
          if (!paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 0).packageName.equals(localRunningAppProcessInfo.processName))
            continue;
          com.iflytek.cloud.a.b.a.a.a("process name:" + localRunningAppProcessInfo.processName + "is own process");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  private SpeechComponent b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    Iterator localIterator = this.d.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!paramString.equals(((SpeechComponent)localIterator.next()).getPackageName()));
    for (int i = 1; ; i = 0)
    {
      SpeechComponent localSpeechComponent;
      if (i == 0)
      {
        localSpeechComponent = new SpeechComponent(paramString);
        this.d.add(localSpeechComponent);
      }
      while (true)
      {
        return localSpeechComponent;
        localSpeechComponent = null;
      }
    }
  }

  private void b()
  {
    if (checkServiceInstalled())
    {
      a("com.iflytek.vflynote.recognize");
      a("com.iflytek.vflynote.synthesize");
      a("com.iflytek.vflynote.speechunderstand");
      a("com.iflytek.vflynote.textunderstand");
      a("com.iflytek.vflynote.wakeup");
    }
  }

  private void c()
  {
    this.h = new SpeechUtility.a(this, null);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
    localIntentFilter.addDataScheme("package");
    this.f.registerReceiver(this.h, localIntentFilter);
  }

  private boolean c(String paramString)
  {
    PackageManager localPackageManager = this.f.getPackageManager();
    Intent localIntent = new Intent(paramString);
    localIntent.setPackage("com.iflytek.vflynote");
    return localPackageManager.queryIntentActivities(localIntent, 1).size() > 0;
  }

  public static SpeechUtility createUtility(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      if (c == null)
      {
        com.iflytek.cloud.b.a locala = new com.iflytek.cloud.b.a();
        locala.b(paramString);
        if ((locala.a("force_login", false)) || (a(paramContext.getApplicationContext())))
          break label64;
        com.iflytek.cloud.a.b.a.a.b("init failed, please call this method in your main process!");
        c = null;
      }
      while (true)
      {
        SpeechUtility localSpeechUtility = c;
        return localSpeechUtility;
        label64: c = new SpeechUtility(paramContext, paramString);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static SpeechUtility getUtility()
  {
    monitorenter;
    try
    {
      SpeechUtility localSpeechUtility = c;
      monitorexit;
      return localSpeechUtility;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  protected boolean a()
  {
    try
    {
      PackageInfo localPackageInfo = this.f.getPackageManager().getPackageInfo("com.iflytek.vflynote", 0);
      int i = 0;
      if (localPackageInfo != null)
        i = 1;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public boolean checkServiceInstalled()
  {
    boolean bool = false;
    int i = -1;
    try
    {
      PackageInfo localPackageInfo = this.f.getPackageManager().getPackageInfo("com.iflytek.vflynote", 0);
      bool = false;
      if (localPackageInfo != null)
      {
        bool = true;
        i = localPackageInfo.versionCode;
      }
      label34: if ((bool != this.g) || (this.e != i))
      {
        this.g = bool;
        this.e = i;
        if (SpeechRecognizer.getRecognizer() != null)
          SpeechRecognizer.getRecognizer().a(this.f);
        if (SpeechSynthesizer.getSynthesizer() != null)
          SpeechSynthesizer.getSynthesizer().a(this.f);
        if (SpeechUnderstander.getUnderstander() != null)
          SpeechUnderstander.getUnderstander().a(this.f);
        if (TextUnderstander.getTextUnderstander() != null)
          TextUnderstander.getTextUnderstander().a(this.f);
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label34;
    }
  }

  public boolean destroy()
  {
    if (this.h != null)
    {
      this.f.unregisterReceiver(this.h);
      this.h = null;
    }
    c = null;
    com.iflytek.cloud.a.b.a.a.a(" SpeechUtility destory success,mInstance=null");
    return true;
  }

  public String getComponentUrl()
  {
    StringBuffer localStringBuffer = new StringBuffer("http://iss.openspeech.cn/v?");
    UtilityConfig.appendHttpParam(localStringBuffer, "key", URLEncoder.encode(Base64.encodeToString(UtilityConfig.getComponentUrlParam(this.f).getBytes(), 0)));
    UtilityConfig.appendHttpParam(localStringBuffer, "version", "1.0");
    return localStringBuffer.toString();
  }

  public a.a getEngineMode()
  {
    return this.a;
  }

  public String getParameter(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    do
    {
      return null;
      if (this.b.e(paramString))
        return super.getParameter(paramString);
    }
    while ((!paramString.equals("tts")) && (!paramString.equals("asr")) && (!paramString.equals("all")) && (!paramString.equals("ivw")));
    try
    {
      String str = getPlusLocalInfo(paramString);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "{ret:20004}";
  }

  public String getPlusLocalInfo(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    if (!checkServiceInstalled())
    {
      localJSONObject.put("ret", 21001);
      return localJSONObject.toString();
    }
    if (getServiceVersion() < 97)
    {
      localJSONObject.put("ret", 20018);
      return localJSONObject.toString();
    }
    if ((10000 <= getServiceVersion()) && (getServiceVersion() <= 11000))
    {
      localJSONObject.put("ret", 20020);
      return localJSONObject.toString();
    }
    Cursor localCursor = this.f.getContentResolver().query(Uri.parse("content://com.iflytek.vflynote.providers.LocalResourceProvider"), null, paramString, null, null);
    int i = localCursor.getColumnIndex("tag_rescontent");
    String str;
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      str = localCursor.getString(i);
      Log.v("SpeechUtility", str);
    }
    while (true)
    {
      if (localCursor != null)
        localCursor.close();
      if (TextUtils.isEmpty(str))
      {
        localJSONObject.put("ret", 20004);
        return localJSONObject.toString();
      }
      localJSONObject.put("ret", 0);
      localJSONObject.put("result", new JSONObject(str));
      return localJSONObject.toString();
      str = "";
    }
  }

  public int getServiceVersion()
  {
    if (this.e < 0);
    try
    {
      PackageInfo localPackageInfo = this.f.getPackageManager().getPackageInfo("com.iflytek.vflynote", 0);
      if (localPackageInfo != null)
        this.e = localPackageInfo.versionCode;
      label33: return this.e;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label33;
    }
  }

  public int openEngineSettings(String paramString)
  {
    try
    {
      Intent localIntent = new Intent();
      localIntent.setPackage("com.iflytek.vflynote");
      String str = "com.iflytek.vflynote";
      if (("tts".equals(paramString)) && (c("com.iflytek.vflynote.activity.speaker.SpeakerSetting")))
        str = "com.iflytek.vflynote.activity.speaker.SpeakerSetting";
      while (true)
      {
        localIntent.setAction(str);
        localIntent.addFlags(268435456);
        this.f.startActivity(localIntent);
        return 0;
        if (("asr".equals(paramString)) && (c("com.iflytek.vflynote.settings.asr")))
        {
          str = "com.iflytek.vflynote.settings.asr";
          continue;
        }
        if (!c("com.iflytek.vflynote.settings.main"))
          continue;
        str = "com.iflytek.vflynote.settings.main";
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 21002;
  }

  public String[] queryAvailableEngines()
  {
    this.d.clear();
    b();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
      localArrayList.addAll(((SpeechComponent)localIterator.next()).getEngines());
    String[] arrayOfString = new String[localArrayList.size()];
    for (int i = 0; i < localArrayList.size(); i++)
      arrayOfString[i] = ((String)localArrayList.get(i));
    return arrayOfString;
  }

  public boolean setParameter(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return false;
    super.setParameter(paramString1, paramString2);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechUtility
 * JD-Core Version:    0.6.0
 */