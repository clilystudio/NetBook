package com.clilystudio.app.netbook.ui.post;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.arcsoft.hpay100.a.a;

final class W
  implements TextWatcher
{
  W(AddVoteItemActivity paramAddVoteItemActivity, EditText paramEditText, Button paramButton)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a.Q(this.a.getText().toString()))
    {
      this.b.setEnabled(false);
      return;
    }
    this.b.setEnabled(true);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.W
 * JD-Core Version:    0.6.2
 */