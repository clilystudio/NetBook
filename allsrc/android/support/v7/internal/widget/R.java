package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.widget.L;
import android.util.AttributeSet;
import android.widget.ListAdapter;

final class R extends L
  implements U
{
  private ListAdapter c;

  public R(SpinnerCompat paramSpinnerCompat, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramSpinnerCompat);
    a(true);
    a(0);
    a(new S(this, paramSpinnerCompat));
  }

  public final void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    this.c = paramListAdapter;
  }

  public final void a(CharSequence paramCharSequence)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.R
 * JD-Core Version:    0.6.0
 */