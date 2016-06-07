package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import com.handmark.pulltorefresh.library.internal.e;

public class ActivityChooserView$InnerLayout extends LinearLayoutCompat
{
  private static final int[] a = { 16842964 };

  public ActivityChooserView$InnerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e locale = e.a(paramContext, paramAttributeSet, a);
    setBackgroundDrawable(locale.a(0));
    locale.b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView.InnerLayout
 * JD-Core Version:    0.6.0
 */