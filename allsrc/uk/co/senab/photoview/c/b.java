package uk.co.senab.photoview.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.OverScroller;

@TargetApi(14)
public final class b extends a
{
  public b(Context paramContext)
  {
    super(paramContext);
  }

  public final boolean a()
  {
    return this.a.computeScrollOffset();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.c.b
 * JD-Core Version:    0.6.0
 */