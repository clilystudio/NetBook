package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.umeng.a.b;
import com.clilystudio.app.netbook.R.styleable;
import com.clilystudio.app.netbook.model.Game;

public class NewGameDownloadButton extends GameDownloadButton
{
  private final String a;

  public NewGameDownloadButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.NewGameDownloadButton);
    this.a = localTypedArray.getString(0);
    localTypedArray.recycle();
  }

  protected final void a()
  {
    c();
  }

  protected final void b()
  {
    setText("下载中");
    setTextColor(-9079435);
    setBackgroundResource(2130837729);
  }

  protected void c()
  {
    setText("安装");
    setTextColor(-1);
    setBackgroundResource(2130837728);
  }

  protected final void d()
  {
    setText("打开");
    setTextColor(-14540254);
    setBackgroundResource(2130837731);
  }

  protected final void e()
  {
    super.e();
    if (h() != null)
    {
      if ("promotion".equals(this.a))
        b.a(getContext(), "game_center_main_install_promotion", h().getName());
    }
    else
      return;
    b.a(getContext(), "game_center_main_install", h().getName());
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setPadding(0, 0, 0, 0);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.NewGameDownloadButton
 * JD-Core Version:    0.6.2
 */