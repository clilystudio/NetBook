package com.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.a.a.b;
import java.util.Map;
import u.aly.ac;
import u.aly.bt;
import u.aly.cB;
import u.aly.cC;
import u.aly.cF;
import u.aly.ch;
import u.aly.cu;
import u.aly.cv;

public final class j
  implements cB
{
  private final b a = new b();
  private Context b = null;
  private cu c = new cu();
  private cF d = new cF();
  private cC e = new cC();
  private cv f;
  private ch g;
  private boolean h = false;

  j()
  {
    this.c.a(this);
  }

  private void d(Context paramContext)
  {
    if (!this.h)
    {
      this.b = paramContext.getApplicationContext();
      this.f = new cv(this.b);
      this.g = ch.a(this.b);
      this.h = true;
    }
  }

  private void e(Context paramContext)
  {
    SharedPreferences localSharedPreferences = com.arcsoft.hpay100.a.a.M(paramContext);
    if (localSharedPreferences != null)
    {
      if ((localSharedPreferences.getLong("a_start_time", 0L) != 0L) || (!a.e))
        break label52;
      bt.b("MobclickAgent", "onPause called before onResume");
    }
    while (true)
    {
      this.d.a(paramContext);
      this.g.a();
      return;
      label52: long l = System.currentTimeMillis();
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putLong("a_start_time", 0L);
      localEditor.putLong("a_end_time", l);
      localEditor.putLong("session_end_time", l);
      localEditor.commit();
    }
  }

  final void a(Context paramContext)
  {
    if (paramContext == null)
    {
      bt.b("MobclickAgent", "unexpected null context in onResume");
      return;
    }
    this.a.a(paramContext);
    try
    {
      ch.a(paramContext).a(this.a);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void a(Context paramContext, String paramString1, String paramString2, long paramLong, int paramInt)
  {
    try
    {
      if (!this.h)
        d(paramContext);
      this.f.a(paramString1, paramString2, -1L, paramInt);
      return;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "", localException);
    }
  }

  final void a(Context paramContext, String paramString, Map<String, Object> paramMap, long paramLong)
  {
    try
    {
      if (!this.h)
        d(paramContext);
      this.f.a(paramString, paramMap, -1L);
      return;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "", localException);
    }
  }

  final void a(com.umeng.a.a.a parama)
  {
    this.a.a(parama);
  }

  final void a(String paramString)
  {
    if (!a.e);
    try
    {
      this.d.a(paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void a(Throwable paramThrowable)
  {
    try
    {
      this.d.a();
      if (this.b != null)
      {
        if ((paramThrowable != null) && (this.g != null))
          this.g.b(new ac(paramThrowable));
        e(this.b);
        com.arcsoft.hpay100.a.a.M(this.b).edit().commit();
      }
      m.a();
      return;
    }
    catch (Exception localException)
    {
      bt.a("MobclickAgent", "Exception in onAppCrash", localException);
    }
  }

  final void b(Context paramContext)
  {
    if (paramContext == null)
    {
      bt.b("MobclickAgent", "unexpected null context in onResume");
      return;
    }
    if (a.e)
      this.d.a(paramContext.getClass().getName());
    try
    {
      if (!this.h)
        d(paramContext);
      m.a(new k(this, paramContext));
      return;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", localException);
    }
  }

  final void b(String paramString)
  {
    if (!a.e);
    try
    {
      this.d.b(paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  final void c(Context paramContext)
  {
    if (paramContext == null)
    {
      bt.b("MobclickAgent", "unexpected null context in onPause");
      return;
    }
    if (a.e)
      this.d.b(paramContext.getClass().getName());
    try
    {
      if (!this.h)
        d(paramContext);
      m.a(new l(this, paramContext));
      return;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", localException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.j
 * JD-Core Version:    0.6.0
 */