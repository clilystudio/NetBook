package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.model.Account;

final class d
  implements View.OnClickListener
{
  d(AbsPostActivity paramAbsPostActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    Account localAccount = am.a(this.b);
    if ((localAccount != null) && (AbsPostActivity.b(this.b)))
    {
      this.b.e = null;
      String str = this.a.getText().toString();
      AbsPostActivity.a(this.b, str);
      this.b.a(localAccount, str);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.d
 * JD-Core Version:    0.6.0
 */