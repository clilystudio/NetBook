package com.ushaqi.zhuishushenqi.ui;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.widget.SearchEditText;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bJ
 * JD-Core Version:    0.6.0
 */