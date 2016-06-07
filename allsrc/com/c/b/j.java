package com.c.b;

import android.view.View;
import com.c.a.D;
import com.c.a.a;
import com.c.a.b;
import com.c.a.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

final class j
  implements D, b
{
  private j(h paramh)
  {
  }

  public final void a(a parama)
  {
    if (h.b(this.a) != null)
      h.b(this.a).a(parama);
  }

  public final void a(w paramw)
  {
    float f1 = paramw.g();
    l locall = (l)h.c(this.a).get(paramw);
    if ((0x1FF & locall.a) != 0)
    {
      View localView2 = (View)h.d(this.a).get();
      if (localView2 != null)
        localView2.invalidate();
    }
    ArrayList localArrayList = locall.b;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        k localk = (k)localArrayList.get(j);
        float f2 = localk.b + f1 * localk.c;
        h.a(this.a, localk.a, f2);
      }
    }
    View localView1 = (View)h.d(this.a).get();
    if (localView1 != null)
      localView1.invalidate();
  }

  public final void b(a parama)
  {
    if (h.b(this.a) != null)
      h.b(this.a).b(parama);
    h.c(this.a).remove(parama);
    if (h.c(this.a).isEmpty())
      h.a(this.a, null);
  }

  public final void c(a parama)
  {
    if (h.b(this.a) != null)
      h.b(this.a).c(parama);
  }

  public final void d(a parama)
  {
    if (h.b(this.a) != null)
      h.b(this.a).d(parama);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.j
 * JD-Core Version:    0.6.0
 */