package com.c.b;

import android.view.View;
import com.c.a.D;
import com.c.a.a;
import com.c.a.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

final class d
  implements D, com.c.a.b
{
  private d(b paramb)
  {
  }

  public final void a(a parama)
  {
    if (b.b(this.a) != null)
      b.b(this.a).a(parama);
  }

  public final void a(w paramw)
  {
    float f1 = paramw.g();
    f localf = (f)b.c(this.a).get(paramw);
    if ((0x1FF & localf.a) != 0)
    {
      View localView2 = (View)b.d(this.a).get();
      if (localView2 != null)
        localView2.invalidate();
    }
    ArrayList localArrayList = localf.b;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        e locale = (e)localArrayList.get(j);
        float f2 = locale.b + f1 * locale.c;
        b.a(this.a, locale.a, f2);
      }
    }
    View localView1 = (View)b.d(this.a).get();
    if (localView1 != null)
      localView1.invalidate();
  }

  public final void b(a parama)
  {
    if (b.b(this.a) != null)
      b.b(this.a).b(parama);
    b.c(this.a).remove(parama);
    if (b.c(this.a).isEmpty())
      b.a(this.a, null);
  }

  public final void c(a parama)
  {
    if (b.b(this.a) != null)
      b.b(this.a).c(parama);
  }

  public final void d(a parama)
  {
    if (b.b(this.a) != null)
      b.b(this.a).d(parama);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.d
 * JD-Core Version:    0.6.0
 */