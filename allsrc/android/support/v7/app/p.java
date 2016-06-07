package android.support.v7.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory2;
import android.view.View;
import android.view.Window;

class p extends AppCompatDelegateImplV7
{
  p(Context paramContext, Window paramWindow, l paraml)
  {
    super(paramContext, paramWindow, paraml);
  }

  final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = super.a(paramView, paramString, paramContext, paramAttributeSet);
    if (localView != null)
      return localView;
    if ((this.c instanceof LayoutInflater.Factory2))
      return ((LayoutInflater.Factory2)this.c).onCreateView(paramView, paramString, paramContext, paramAttributeSet);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.p
 * JD-Core Version:    0.6.0
 */