package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.util.e;

final class V
  implements View.OnClickListener
{
  V(AddVoteItemActivity paramAddVoteItemActivity, EditText paramEditText, TextView paramTextView, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    AddVoteItemActivity.a(this.e, this.a);
    String str = this.a.getText().toString();
    if (!a.Q(str))
    {
      if (!AddVoteItemActivity.a(this.e, str))
        break label57;
      e.a(this.e, "该投票项已经存在");
    }
    while (true)
    {
      this.d.dismiss();
      return;
      label57: this.b.setText(str);
      AddVoteItemActivity.h(this.e)[this.c] = str;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.V
 * JD-Core Version:    0.6.0
 */