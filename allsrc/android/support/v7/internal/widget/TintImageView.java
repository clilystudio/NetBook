package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.handmark.pulltorefresh.library.internal.e;

public class TintImageView extends ImageView
{
  private static final int[] a = { 16842964, 16843033 };
  private final Y b;

  public TintImageView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TintImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TintImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
    if (locale.a() > 0)
    {
      if (locale.e(0))
        setBackgroundDrawable(locale.a(0));
      if (locale.e(1))
        setImageDrawable(locale.a(1));
    }
    locale.b();
    this.b = locale.c();
  }

  public void setImageResource(int paramInt)
  {
    setImageDrawable(this.b.a(paramInt));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.TintImageView
 * JD-Core Version:    0.6.0
 */