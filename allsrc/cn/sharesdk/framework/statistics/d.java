package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.sharesdk.framework.statistics.b.e;
import cn.sharesdk.framework.statistics.b.g;
import com.mob.tools.f;
import java.io.PrintStream;
import java.util.Calendar;

public class d extends f
{
  private static d a;
  private Context b;
  private com.mob.tools.b.a c;
  private a d;
  private String e;
  private Handler f;
  private boolean g;
  private int h;
  private boolean i;
  private long j;
  private boolean k;

  private d(Context paramContext)
  {
    super("Thread-" + Math.abs(19560));
    this.b = paramContext;
    this.c = com.mob.tools.b.a.a(paramContext);
    this.d = a.a(paramContext);
  }

  public static d a(Context paramContext)
  {
    monitorenter;
    try
    {
      d locald1 = a;
      if (locald1 == null)
        if (paramContext != null);
      for (d locald2 = null; ; locald2 = a)
      {
        return locald2;
        a = new d(paramContext.getApplicationContext());
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void a()
  {
    boolean bool = b();
    if (bool)
      if ((!this.k) && (this.c.a(0)))
      {
        this.k = bool;
        this.j = System.currentTimeMillis();
        a(new g());
      }
    do
      return;
    while ((!this.k) || (!this.c.a(0)));
    this.k = bool;
    long l = System.currentTimeMillis() - this.j;
    e locale = new e();
    locale.a = l;
    a(locale);
  }

  private void b(cn.sharesdk.framework.statistics.b.c paramc)
  {
    paramc.f = this.c.j();
    paramc.g = this.e;
    paramc.h = this.c.k();
    paramc.i = this.c.m();
    paramc.j = String.valueOf(60000 + this.h);
    paramc.k = 1;
    paramc.l = this.c.i();
    if ((!"cn.sharesdk.demo".equals(paramc.h)) && (("api20".equals(this.e)) || ("androidv1101".equals(this.e))))
      System.err.println("Your application is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
    com.mob.tools.b.a locala = this.c;
    paramc.m = com.mob.tools.b.a.a(Build.MODEL + "|" + Build.VERSION.SDK_INT + "|" + Build.MANUFACTURER + "|" + locala.f() + "|" + locala.e(), locala.j().substring(0, 15));
  }

  private boolean b()
  {
    com.mob.tools.b.a locala = com.mob.tools.b.a.a(this.b);
    String str1 = locala.o();
    String str2 = locala.k();
    return (str2 != null) && (str2.equals(str1));
  }

  private void c()
  {
    try
    {
      if (this.c.a(0))
        a.a(this.b).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  private void c(cn.sharesdk.framework.statistics.b.c paramc)
  {
    try
    {
      this.d.a(paramc);
      paramc.b(this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      cn.sharesdk.framework.utils.d.a().w(paramc.toString(), new Object[0]);
    }
  }

  public void a(int paramInt)
  {
    this.h = paramInt;
  }

  public void a(Handler paramHandler)
  {
    this.f = paramHandler;
  }

  public void a(cn.sharesdk.framework.statistics.b.c paramc)
  {
    Message localMessage;
    if (this.i)
    {
      b(paramc);
      if (paramc.a(this.b))
      {
        localMessage = new Message();
        localMessage.what = 3;
        localMessage.obj = paramc;
      }
    }
    else
    {
      try
      {
        this.handler.sendMessage(localMessage);
        return;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return;
      }
    }
    cn.sharesdk.framework.utils.d.a().d("Drop event: " + paramc.toString(), new Object[0]);
  }

  public void a(String paramString)
  {
    this.e = paramString;
  }

  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  protected void onMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 3:
      do
        return;
      while (paramMessage.obj == null);
      c((cn.sharesdk.framework.statistics.b.c)paramMessage.obj);
      return;
    case 1:
      a();
      try
      {
        this.handler.sendEmptyMessageDelayed(1, 1000L);
        return;
      }
      catch (Throwable localThrowable2)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable2);
        return;
      }
    case 2:
      c();
      try
      {
        this.handler.sendEmptyMessageDelayed(2, 10000L);
        return;
      }
      catch (Throwable localThrowable1)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable1);
        return;
      }
    case 4:
    }
    long l = cn.sharesdk.framework.statistics.a.c.a(this.b).h().longValue();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(l);
    int m = localCalendar.get(1);
    int n = localCalendar.get(2);
    int i1 = localCalendar.get(5);
    localCalendar.setTimeInMillis(System.currentTimeMillis());
    int i2 = localCalendar.get(1);
    int i3 = localCalendar.get(2);
    int i4 = localCalendar.get(5);
    if ((m != i2) || (n != i3) || (i1 != i4))
      this.d.b(this.e);
    while (true)
    {
      this.handler.sendEmptyMessageDelayed(4, 3600000L);
      return;
      this.d.c(this.e);
    }
  }

  protected void onStart(Message paramMessage)
  {
    if (!this.i)
    {
      this.i = true;
      this.d.a(this.e);
      this.d.b(this.e);
      this.d.c(this.e);
      this.d.d(this.e);
      this.handler.sendEmptyMessageDelayed(4, 3600000L);
      this.d.a(this.g);
      this.handler.sendEmptyMessage(1);
      this.handler.sendEmptyMessage(2);
      NewAppReceiver.a(this.b);
    }
  }

  protected void onStop(Message paramMessage)
  {
    if (this.i)
    {
      long l = System.currentTimeMillis() - this.j;
      e locale = new e();
      locale.a = l;
      a(locale);
      this.i = false;
    }
    try
    {
      this.f.sendEmptyMessage(1);
      a = null;
      this.handler.getLooper().quit();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.d
 * JD-Core Version:    0.6.0
 */