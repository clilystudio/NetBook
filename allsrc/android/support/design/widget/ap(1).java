package android.support.design.widget;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

final class ap
  implements TextWatcher
{
  ap(TextInputLayout paramTextInputLayout)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    TextInputLayout.a(this.a).sendEmptyMessage(0);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ap
 * JD-Core Version:    0.6.0
 */