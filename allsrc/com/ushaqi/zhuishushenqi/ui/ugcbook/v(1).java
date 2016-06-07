package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.widget.SearchEditText;

final class v
  implements View.OnFocusChangeListener
{
  v(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    UGCGuideAddBookActivity localUGCGuideAddBookActivity = this.a;
    if (!a.Q(UGCGuideAddBookActivity.a(this.a).getText().toString()));
    for (boolean bool = true; ; bool = false)
    {
      UGCGuideAddBookActivity.c(localUGCGuideAddBookActivity, bool);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.v
 * JD-Core Version:    0.6.0
 */