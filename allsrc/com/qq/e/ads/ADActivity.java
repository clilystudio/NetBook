package com.qq.e.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.pi.ACTD;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;

public class ADActivity extends Activity
{
  private ACTD a;

  public void onBackPressed()
  {
    super.onBackPressed();
    if (this.a != null)
      this.a.onBackPressed();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.a != null)
      this.a.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    Intent localIntent = getIntent();
    String str1 = localIntent.getExtras().getString("gdt_activity_delegate_name");
    String str2 = localIntent.getExtras().getString("appid");
    if ((StringUtil.isEmpty(str1)) || (StringUtil.isEmpty(str2)))
    {
      if (this.a == null)
        break label179;
      this.a.onBeforeCreate(paramBundle);
    }
    while (true)
    {
      while (true)
      {
        super.onCreate(paramBundle);
        if (this.a != null)
          this.a.onAfterCreate(paramBundle);
        return;
        try
        {
          if (!GDTADManager.getInstance().initWith(getApplicationContext(), str2))
            break label171;
          this.a = GDTADManager.getInstance().getPM().getPOFactory().getActivityDelegate(str1, this);
          if (this.a != null)
            break;
          GDTLogger.e("Init ADActivity Delegate return null,delegateName" + str1);
        }
        catch (Throwable localThrowable)
        {
          GDTLogger.e("Init ADActivity Delegate Faile,DelegateName:" + str1, localThrowable);
        }
      }
      break;
      label171: GDTLogger.e("Init GDTADManager fail in AdActivity");
      break;
      label179: finish();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.a != null)
      this.a.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    if (this.a != null)
      this.a.onResume();
  }

  protected void onStop()
  {
    super.onStop();
    if (this.a != null)
      this.a.onStop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.ADActivity
 * JD-Core Version:    0.6.0
 */