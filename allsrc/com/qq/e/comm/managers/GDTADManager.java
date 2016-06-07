package com.qq.e.comm.managers;

import android.content.Context;
import android.os.Build.VERSION;
import com.qq.e.comm.constants.CustomPkgConstants;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.setting.SM;
import com.qq.e.comm.managers.status.APPStatus;
import com.qq.e.comm.managers.status.DeviceStatus;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

public class GDTADManager
{
  public static final ExecutorService INIT_EXECUTOR = Executors.newSingleThreadExecutor();
  private volatile Boolean a = Boolean.valueOf(false);
  private volatile Context b;
  private volatile SM c;
  private volatile PM d;
  private volatile APPStatus e;
  private volatile DeviceStatus f;

  public static GDTADManager getInstance()
  {
    return GDTADManager.a.a();
  }

  public JSONObject buildS2SSBaseInfo()
  {
    if (isInitialized())
    {
      JSONObject localJSONObject = com.qq.e.comm.a.a(this.c);
      localJSONObject.put("app", com.qq.e.comm.a.a(this.e));
      localJSONObject.put("c", com.qq.e.comm.a.a(this.f));
      localJSONObject.put("sdk", com.qq.e.comm.a.a(this.d));
      return localJSONObject;
    }
    return null;
  }

  public String getADActivityClazz()
  {
    return CustomPkgConstants.getADActivityName();
  }

  public Context getAppContext()
  {
    return this.b;
  }

  public APPStatus getAppStatus()
  {
    return this.e;
  }

  public DeviceStatus getDeviceStatus()
  {
    return this.f;
  }

  public String getDownLoadClazz()
  {
    return CustomPkgConstants.getDownLoadServiceName();
  }

  public PM getPM()
  {
    return this.d;
  }

  public SM getSM()
  {
    return this.c;
  }

  public boolean initWith(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      boolean bool = this.a.booleanValue();
      int i;
      if (bool)
        i = 1;
      while (true)
      {
        return i;
        if ((paramContext == null) || (StringUtil.isEmpty(paramString)))
        {
          GDTLogger.e("Context And APPID should Never Be NULL while init GDTADManager");
          i = 0;
          continue;
        }
        try
        {
          long l = System.nanoTime();
          this.b = paramContext.getApplicationContext();
          this.c = new SM(this.b);
          this.d = new PM(this.b);
          this.e = new APPStatus(paramString, this.b);
          this.f = new DeviceStatus(paramContext);
          if (Build.VERSION.SDK_INT > 7)
            com.qq.e.comm.services.a.a().a(this.b, this.c, this.d, this.f, this.e, l);
          this.a = Boolean.valueOf(true);
          i = 1;
        }
        catch (Throwable localThrowable)
        {
          GDTLogger.report("ADManager init error", localThrowable);
          i = 0;
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean isInitialized()
  {
    if (this.a == null)
      return false;
    return this.a.booleanValue();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.GDTADManager
 * JD-Core Version:    0.6.0
 */