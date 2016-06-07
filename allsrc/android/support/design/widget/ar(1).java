package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import android.widget.TextView;

final class ar extends ViewPropertyAnimatorListenerAdapter
{
  ar(TextInputLayout paramTextInputLayout)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    TextInputLayout.b(this.a).setText(null);
    TextInputLayout.b(this.a).setVisibility(4);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ar
 * JD-Core Version:    0.6.0
 */