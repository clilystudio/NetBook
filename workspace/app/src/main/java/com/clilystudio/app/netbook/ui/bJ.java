package com.clilystudio.app.netbook.ui;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.widget.SearchEditText;

final class bJ
  implements TextView.OnEditorActionListener
{
  bJ(SearchActivity paramSearchActivity)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchActivity.f(this.a).getText().toString().trim().equals(""))
    {
      e.a(this.a, "请输入要搜索的关键字");
      return true;
    }
    SearchActivity.a(this.a, true, true);
    return true;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bJ
 * JD-Core Version:    0.6.2
 */