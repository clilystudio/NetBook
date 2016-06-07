package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import com.handmark.pulltorefresh.library.internal.e;

public class AppCompatCheckedTextView extends CheckedTextView
{
  private static final int[] a = { 16843016 };
  private Y b;

  public AppCompatCheckedTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16843720);
  }

  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Y.a)
    {
      e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      setCheckMarkDrawable(locale.a(0));
      locale.b();
      this.b = locale.c();
    }
  }

  public void setCheckMarkDrawable(int paramInt)
  {
    if (this.b != null)
    {
      setCheckMarkDrawable(this.b.a(paramInt));
      return;
    }
    super.setCheckMarkDrawable(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatCheckedTextView
 * JD-Core Version:    0.6.0
 */