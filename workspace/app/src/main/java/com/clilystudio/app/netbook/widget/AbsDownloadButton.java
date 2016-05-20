package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.Button;
import com.clilystudio.app.netbook.model.AppItem;

public abstract class AbsDownloadButton extends Button
{
  private AppItem a;

  public AbsDownloadButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void e()
  {
    setText("安装");
    setBackgroundResource(2130837819);
  }

  public final AppItem a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    if (this.a == null)
      return;
    switch (paramInt)
    {
    default:
      setOnClickListener(new e(this, (byte)0));
      setText("下载");
      setBackgroundResource(2130838100);
      return;
    case 32:
      setText("已安装");
      setBackgroundResource(2130837817);
      setOnClickListener(null);
      return;
    case 1:
    case 2:
      setText("下载中");
      setBackgroundResource(2130837817);
      setOnClickListener(null);
      return;
    case 8:
      e();
      setOnClickListener(new c(this, (byte)0));
      return;
    case 4:
      setBackgroundResource(2131427542);
      setTextColor(Color.parseColor("#AAAAAA"));
      setText("已暂停");
      setOnClickListener(new d(this, (byte)0));
      return;
    case 64:
    }
    e();
    setOnClickListener(new c(this, (byte)0));
  }

  protected abstract void b();

  protected abstract void c();

  protected abstract void d();

  public void setAppItem(AppItem paramAppItem)
  {
    this.a = paramAppItem;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.AbsDownloadButton
 * JD-Core Version:    0.6.2
 */