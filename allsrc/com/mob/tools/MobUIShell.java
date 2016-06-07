package com.mob.tools;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.mob.tools.log.d;
import java.util.HashMap;

public class MobUIShell extends Activity
{
  private static HashMap<String, a> a = new HashMap();
  private a b;

  static
  {
    e.a().d("===============================", new Object[0]);
    String str = "2015-11-23".replace("-0", "-").replace("-", ".");
    e.a().d("MobTools " + str, new Object[0]);
    e.a().d("===============================", new Object[0]);
  }

  protected static String a(Object paramObject)
  {
    return a(String.valueOf(System.currentTimeMillis()), paramObject);
  }

  protected static String a(String paramString, Object paramObject)
  {
    a.put(paramString, (a)paramObject);
    return paramString;
  }

  public void finish()
  {
    if ((this.b != null) && (this.b.onFinish()))
      return;
    super.finish();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.b != null)
      this.b.onActivityResult(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.b != null)
      this.b.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    Intent localIntent = getIntent();
    String str1 = localIntent.getStringExtra("launch_time");
    String str2 = localIntent.getStringExtra("executor_name");
    this.b = ((a)a.remove(str1));
    if (this.b == null)
    {
      String str3 = localIntent.getScheme();
      this.b = ((a)a.remove(str3));
      if (this.b == null)
      {
        e.a().w(new RuntimeException("Executor lost! launchTime = " + str1 + ", executorName: " + str2));
        super.onCreate(paramBundle);
        finish();
        return;
      }
    }
    e.a().i("MobUIShell found executor: " + this.b.getClass(), new Object[0]);
    this.b.setActivity(this);
    super.onCreate(paramBundle);
    e.a().d(this.b.getClass().getSimpleName() + " onCreate", new Object[0]);
    this.b.onCreate();
  }

  protected void onDestroy()
  {
    if (this.b != null)
    {
      this.b.sendResult();
      e.a().d(this.b.getClass().getSimpleName() + " onDestroy", new Object[0]);
      this.b.onDestroy();
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    a locala = this.b;
    boolean bool = false;
    if (locala != null)
      bool = this.b.onKeyEvent(paramInt, paramKeyEvent);
    if (bool)
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    a locala = this.b;
    boolean bool = false;
    if (locala != null)
      bool = this.b.onKeyEvent(paramInt, paramKeyEvent);
    if (bool)
      return true;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (this.b == null)
    {
      super.onNewIntent(paramIntent);
      return;
    }
    this.b.onNewIntent(paramIntent);
  }

  protected void onPause()
  {
    if (this.b != null)
    {
      e.a().d(this.b.getClass().getSimpleName() + " onPause", new Object[0]);
      this.b.onPause();
    }
    super.onPause();
  }

  protected void onRestart()
  {
    if (this.b != null)
    {
      e.a().d(this.b.getClass().getSimpleName() + " onRestart", new Object[0]);
      this.b.onRestart();
    }
    super.onRestart();
  }

  protected void onResume()
  {
    if (this.b != null)
    {
      e.a().d(this.b.getClass().getSimpleName() + " onResume", new Object[0]);
      this.b.onResume();
    }
    super.onResume();
  }

  protected void onStart()
  {
    if (this.b != null)
    {
      e.a().d(this.b.getClass().getSimpleName() + " onStart", new Object[0]);
      this.b.onStart();
    }
    super.onStart();
  }

  protected void onStop()
  {
    if (this.b != null)
    {
      e.a().d(this.b.getClass().getSimpleName() + " onStop", new Object[0]);
      this.b.onStop();
    }
    super.onStop();
  }

  public void setContentView(int paramInt)
  {
    setContentView(LayoutInflater.from(this).inflate(paramInt, null));
  }

  public void setContentView(View paramView)
  {
    if (paramView == null);
    do
    {
      return;
      super.setContentView(paramView);
    }
    while (this.b == null);
    this.b.setContentView(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramView == null);
    while (true)
    {
      return;
      if (paramLayoutParams == null)
        super.setContentView(paramView);
      while (this.b != null)
      {
        this.b.setContentView(paramView);
        return;
        super.setContentView(paramView, paramLayoutParams);
      }
    }
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.MobUIShell
 * JD-Core Version:    0.6.0
 */