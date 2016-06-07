package cn.sharesdk.framework.statistics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.mob.tools.b.a;

public class NewAppReceiver extends BroadcastReceiver
  implements Handler.Callback
{
  private static final String[] a = { "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_REPLACED" };
  private static NewAppReceiver b;
  private Context c;
  private IntentFilter[] d;
  private Handler e;

  private NewAppReceiver(Context paramContext)
  {
    this.c = paramContext;
    IntentFilter[] arrayOfIntentFilter = new IntentFilter[2];
    arrayOfIntentFilter[0] = new IntentFilter();
    arrayOfIntentFilter[1] = new IntentFilter();
    this.d = arrayOfIntentFilter;
    this.d[0].addAction("cn.sharesdk.START_UP");
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    while (i < j)
    {
      String str = arrayOfString[i];
      this.d[1].addAction(str);
      i++;
    }
    this.d[1].addDataScheme("package");
    this.e = new Handler(this);
    this.e.sendEmptyMessage(1);
  }

  private static void a()
  {
    monitorenter;
    try
    {
      NewAppReceiver localNewAppReceiver = b;
      if (localNewAppReceiver != null);
      try
      {
        b.c.unregisterReceiver(b);
        monitorexit;
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          cn.sharesdk.framework.utils.d.a().d(localThrowable);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static void a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new NewAppReceiver(paramContext);
      a();
      try
      {
        for (IntentFilter localIntentFilter : b.d)
          paramContext.registerReceiver(b, localIntentFilter);
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        monitorexit;
        return;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private boolean a(String paramString)
  {
    String[] arrayOfString = a;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      int k = 0;
      if (j < i)
      {
        if (!arrayOfString[j].equals(paramString))
          continue;
        k = 1;
      }
      return k;
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return false;
      NewAppReceiver.b.a(this.c);
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = null;
    if (paramIntent != null)
      str1 = paramIntent.getAction();
    int i;
    if ("cn.sharesdk.START_UP".equals(str1))
    {
      String str2 = a.a(paramContext).k();
      String str3 = paramIntent.getStringExtra("packageName");
      if ((str3 == null) || (!str3.equals(str2)))
        break label122;
      i = 1;
    }
    while (true)
    {
      if (i != 0)
      {
        cn.sharesdk.framework.utils.d.a().d("========= receive broadcast: " + str1, new Object[0]);
        this.e.removeMessages(1);
        this.e.sendEmptyMessageDelayed(1, 60000L);
      }
      return;
      if (a(str1))
      {
        i = 1;
        continue;
      }
      label122: i = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.NewAppReceiver
 * JD-Core Version:    0.6.0
 */