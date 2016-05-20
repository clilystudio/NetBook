package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.widget.SearchEditText;

final class bL
  implements View.OnFocusChangeListener
{
  bL(SearchActivity paramSearchActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    SearchActivity localSearchActivity = this.a;
    if (!a.Q(SearchActivity.f(this.a).getText().toString()));
    for (boolean bool = true; ; bool = false)
    {
      SearchActivity.a(localSearchActivity, bool);
      return;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bL
 * JD-Core Version:    0.6.2
 */