package u.aly;

import android.content.Context;
import com.umeng.a.a.b;
import com.umeng.a.a.f;
import com.umeng.a.m;

public final class ch
  implements cw
{
  private static ch c;
  private cw a;
  private Context b;

  private ch(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.a = new cg(this.b);
  }

  public static ch a(Context paramContext)
  {
    monitorenter;
    try
    {
      if ((c == null) && (paramContext != null))
        c = new ch(paramContext);
      ch localch = c;
      return localch;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a()
  {
    m.b(new cp(this));
  }

  public final void a(b paramb)
  {
    if ((paramb != null) && (this.a != null))
      paramb.a((f)this.a);
  }

  public final void a(cx paramcx)
  {
    m.b(new ci(this, paramcx));
  }

  public final void b(cx paramcx)
  {
    this.a.b(paramcx);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ch
 * JD-Core Version:    0.6.0
 */