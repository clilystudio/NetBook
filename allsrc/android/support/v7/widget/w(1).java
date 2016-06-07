package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

final class w
  implements Runnable
{
  w(t paramt, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ay localay = (ay)localIterator.next();
      t.a(this.b, localay);
    }
    this.a.clear();
    t.c(this.b).remove(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.w
 * JD-Core Version:    0.6.0
 */