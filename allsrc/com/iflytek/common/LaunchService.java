package com.iflytek.common;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Process;
import com.iflytek.common.a.d;

public class LaunchService extends Service
{
  private d a;
  private long b = 0L;
  private BroadcastReceiver c = new b(this);

  private void a()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction(getPackageName() + "_LAUNCH_ALARM_LAUNCH");
      registerReceiver(this.c, localIntentFilter);
      return;
    }
    catch (Exception localException)
    {
      com.iflytek.common.c.c.b("LaunchService", "", localException);
    }
  }

  private void b()
  {
    monitorenter;
    while (true)
    {
      try
      {
        long l1 = this.a.c();
        long l2 = l1 + System.currentTimeMillis();
        long l3 = l2 - this.b;
        if ((l3 <= 0L) || (l3 >= l1))
          continue;
        com.iflytek.common.c.c.a(this, "reg next alarm too short:" + l3);
        return;
        try
        {
          AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
          Intent localIntent = new Intent(getPackageName() + "_LAUNCH_ALARM_LAUNCH");
          PendingIntent localPendingIntent = PendingIntent.getBroadcast(getApplicationContext(), 0, localIntent, 134217728);
          if (l1 <= 0L)
            break label200;
          this.b = l2;
          localAlarmManager.cancel(localPendingIntent);
          localAlarmManager.set(0, this.b, localPendingIntent);
          com.iflytek.common.c.c.a(this, "reg next alarm: " + com.iflytek.common.c.c.a(this.b));
        }
        catch (Exception localException)
        {
          com.iflytek.common.c.c.b("LaunchService", "", localException);
        }
        continue;
      }
      finally
      {
        monitorexit;
      }
      label200: com.iflytek.common.c.c.a(this, "not reg alarm,periodrun = 0.");
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    com.iflytek.common.c.c.a(this, "LaunchService onCreate pid=" + Process.myTid());
    this.a = d.a(getApplicationContext());
    a();
    com.iflytek.common.a.c.a(this);
    b();
  }

  public void onDestroy()
  {
    super.onDestroy();
    com.iflytek.common.c.c.a(this, "LaunchService onDestroy");
    try
    {
      unregisterReceiver(this.c);
      return;
    }
    catch (Exception localException)
    {
      com.iflytek.common.c.c.b("LaunchService", "", localException);
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    com.iflytek.common.c.c.a(this, "LaunchService onStart lastalarm=" + this.b + " periodrun=" + this.a.c());
    if ((this.b == 0L) && (this.a.c() > 0L))
      b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.LaunchService
 * JD-Core Version:    0.6.0
 */