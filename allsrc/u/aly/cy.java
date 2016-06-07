package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class cy
{
  private List<cx> a = new ArrayList();
  private ah b = null;
  private ai c = null;
  private ak d = null;
  private ax e = null;
  private Context f = null;

  public cy(Context paramContext)
  {
    this.f = paramContext;
  }

  private ai b()
  {
    monitorenter;
    try
    {
      Context localContext;
      if (this.c == null)
      {
        this.c = new ai();
        localContext = this.f;
      }
      try
      {
        this.c.a(com.umeng.a.a.a(localContext));
        this.c.e(com.umeng.a.a.b(localContext));
        this.c.c(bs.o(localContext));
        this.c.a(bc.a);
        this.c.d("5.2.4");
        this.c.b(bs.b(localContext));
        this.c.a(Integer.parseInt(bs.a(localContext)));
        ai localai = this.c;
        monitorexit;
        return localai;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private ak c()
  {
    monitorenter;
    try
    {
      Context localContext;
      if (this.d == null)
      {
        this.d = new ak();
        localContext = this.f;
      }
      try
      {
        this.d.f(bs.a());
        this.d.a(bs.c(localContext));
        this.d.b(bs.d(localContext));
        this.d.c(bs.k(localContext));
        this.d.e(Build.MODEL);
        this.d.g("Android");
        this.d.h(Build.VERSION.RELEASE);
        int[] arrayOfInt = bs.l(localContext);
        if (arrayOfInt != null)
          this.d.a(new ba(arrayOfInt[1], arrayOfInt[0]));
        this.d.i(Build.BOARD);
        this.d.j(Build.BRAND);
        this.d.a(Build.TIME);
        this.d.k(Build.MANUFACTURER);
        this.d.l(Build.ID);
        this.d.m(Build.DEVICE);
        ak localak = this.d;
        monitorexit;
        return localak;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private ax d()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (this.e != null)
          continue;
        this.e = new ax();
        Context localContext = this.f;
        try
        {
          String[] arrayOfString1 = bs.e(localContext);
          if (!"Wi-Fi".equals(arrayOfString1[0]))
            continue;
          this.e.a(ag.c);
          if ("".equals(arrayOfString1[1]))
            continue;
          this.e.e(arrayOfString1[1]);
          this.e.c(bs.m(localContext));
          String[] arrayOfString2 = bs.i(localContext);
          this.e.b(arrayOfString2[0]);
          this.e.a(arrayOfString2[1]);
          this.e.a(bs.h(localContext));
          ax localax = this.e;
          monitorexit;
          return localax;
          if ("2G/3G".equals(arrayOfString1[0]))
          {
            this.e.a(ag.b);
            continue;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      this.e.a(ag.a);
    }
  }

  private at e()
  {
    try
    {
      at localat = cd.b(this.f).a();
      return localat;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private as f()
  {
    try
    {
      as localas = cd.a(this.f).b();
      return localas;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private aj g()
  {
    try
    {
      SharedPreferences localSharedPreferences = com.arcsoft.hpay100.a.a.M(this.f);
      aj localaj = new aj();
      localaj.c(localSharedPreferences.getInt("failed_requests ", 0));
      localaj.d(localSharedPreferences.getInt("last_request_spent_ms", 0));
      localaj.a(localSharedPreferences.getInt("successful_request", 0));
      return localaj;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return new aj();
  }

  public final int a()
  {
    monitorenter;
    try
    {
      int i = this.a.size();
      ah localah = this.b;
      if (localah != null)
        i++;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(ah paramah)
  {
    monitorenter;
    try
    {
      this.b = paramah;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(bf parambf)
  {
    String str = com.arcsoft.hpay100.a.a.M(this.f).getString("session_id", null);
    if (str == null)
      return;
    monitorenter;
    try
    {
      Iterator localIterator = this.a.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          this.a.clear();
          if (this.b != null)
          {
            parambf.a(this.b);
            this.b = null;
          }
          monitorexit;
          parambf.a(b());
          parambf.a(c());
          parambf.a(d());
          parambf.a(g());
          parambf.a(e());
          parambf.a(f());
          return;
        }
        ((cx)localIterator.next()).a(parambf, str);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(cx paramcx)
  {
    monitorenter;
    try
    {
      this.a.add(paramcx);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cy
 * JD-Core Version:    0.6.0
 */