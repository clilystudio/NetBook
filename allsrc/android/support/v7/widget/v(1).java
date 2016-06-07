package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

final class v
  implements Runnable
{
  v(t paramt, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      C localC = (C)localIterator.next();
      t.a(this.b, localC);
    }
    this.a.clear();
    t.b(this.b).remove(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.v
 * JD-Core Version:    0.6.0
 */