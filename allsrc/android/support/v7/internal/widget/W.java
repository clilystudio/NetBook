package android.support.v7.internal.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;

public final class W extends ContextWrapper
{
  private Resources a;

  private W(Context paramContext)
  {
    super(paramContext);
  }

  public static Context a(Context paramContext)
  {
    if (!(paramContext instanceof W))
      paramContext = new W(paramContext);
    return paramContext;
  }

  public final Resources getResources()
  {
    if (this.a == null)
      this.a = new X(super.getResources(), Y.a(this));
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.W
 * JD-Core Version:    0.6.0
 */