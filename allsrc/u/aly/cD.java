package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.arcsoft.hpay100.a.a;

public final class cD
{
  public int a;
  public long b;
  private int c;
  private int d;
  private long e = 0L;
  private long f = 0L;
  private Context g;

  public cD(Context paramContext)
  {
    this.g = paramContext.getApplicationContext();
    SharedPreferences localSharedPreferences = a.M(paramContext);
    this.c = localSharedPreferences.getInt("successful_request", 0);
    this.a = localSharedPreferences.getInt("failed_requests ", 0);
    this.d = localSharedPreferences.getInt("last_request_spent_ms", 0);
    this.b = localSharedPreferences.getLong("last_request_time", 0L);
  }

  public final boolean a()
  {
    return this.b == 0L;
  }

  public final void b()
  {
    this.c = (1 + this.c);
    this.b = this.e;
  }

  public final void c()
  {
    this.e = System.currentTimeMillis();
  }

  public final void d()
  {
    this.d = (int)(System.currentTimeMillis() - this.e);
  }

  public final void e()
  {
    a.M(this.g).edit().putInt("successful_request", this.c).putInt("failed_requests ", this.a).putInt("last_request_spent_ms", this.d).putLong("last_request_time", this.b).commit();
  }

  public final void f()
  {
    a.M(this.g).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
  }

  public final boolean g()
  {
    if (this.f == 0L)
      this.f = a.M(this.g).getLong("first_activate_time", 0L);
    return this.f == 0L;
  }

  public final long h()
  {
    if (g())
      return System.currentTimeMillis();
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cD
 * JD-Core Version:    0.6.0
 */