package com.ushaqi.zhuishushenqi.ui;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;

final class bi
  implements View.OnKeyListener
{
  bi(LuckyGameWebActivity paramLuckyGameWebActivity)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (LuckyGameWebActivity.d(this.a).canGoBack()))
    {
      LuckyGameWebActivity.d(this.a).goBack();
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bi
 * JD-Core Version:    0.6.0
 */