package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.ushaqi.zhuishushenqi.ui.game.GameDetailActivity;

public class GameGiftGetButton extends GameDownloadButton
{
  private GameGiftItemView a;

  public GameGiftGetButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    try
    {
      ((GameDetailActivity)paramContext).a(this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected final void a()
  {
    setText("下载");
    setBackgroundResource(2131427379);
  }

  protected final void b()
  {
    setText("下载中");
    setBackgroundResource(2131427377);
  }

  protected final void c()
  {
    setText("安装");
    setBackgroundResource(2131427378);
  }

  protected final void d()
  {
    if (this.a != null)
      this.a.a();
  }

  public void setGiftItemView(GameGiftItemView paramGameGiftItemView)
  {
    this.a = paramGameGiftItemView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameGiftGetButton
 * JD-Core Version:    0.6.0
 */