package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

final class u
  implements Runnable
{
  u(t paramt, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      D localD = (D)localIterator.next();
      t.a(this.b, localD.a, localD.b, localD.c, localD.d, localD.e);
    }
    this.a.clear();
    t.a(this.b).remove(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.u
 * JD-Core Version:    0.6.0
 */