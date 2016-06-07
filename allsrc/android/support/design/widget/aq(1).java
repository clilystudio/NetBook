package android.support.design.widget;

import android.os.Handler;
import android.view.View;
import android.view.View.OnFocusChangeListener;

final class aq
  implements View.OnFocusChangeListener
{
  aq(TextInputLayout paramTextInputLayout)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    TextInputLayout.a(this.a).sendEmptyMessage(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aq
 * JD-Core Version:    0.6.0
 */