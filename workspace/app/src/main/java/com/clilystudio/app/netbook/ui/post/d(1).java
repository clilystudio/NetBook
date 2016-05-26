package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.app.netbook.model.Account;

final class d
  implements View.OnClickListener
{
  d(AbsPostActivity paramAbsPostActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    Account localAccount = am_CommonUtils.a_isTaskStoped(this.b);
    if ((localAccount != null) && (AbsPostActivity.b(this.b)))
    {
      this.b.e = null;
      String str = this.a.getText().toString();
      AbsPostActivity.a(this.b, str);
      this.b.a(localAccount, str);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.d
 * JD-Core Version:    0.6.2
 */