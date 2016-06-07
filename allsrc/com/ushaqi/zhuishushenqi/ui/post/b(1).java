package com.ushaqi.zhuishushenqi.ui.post;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class b
  implements Runnable
{
  b(a parama)
  {
  }

  public final void run()
  {
    EditText localEditText = AbsPostActivity.a(this.a.a);
    localEditText.clearFocus();
    ((InputMethodManager)this.a.a.getSystemService("input_method")).hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.b
 * JD-Core Version:    0.6.0
 */