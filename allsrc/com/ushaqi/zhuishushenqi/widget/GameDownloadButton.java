package com.ushaqi.zhuishushenqi.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.am;
import android.support.v7.app.j;
import android.support.v7.app.k;
import android.util.AttributeSet;
import android.widget.Button;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.db.DownloadItem;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.ui.game.GameDetailActivity;
import com.ushaqi.zhuishushenqi.ui.game.s;
import com.ushaqi.zhuishushenqi.util.e;

public class GameDownloadButton extends Button
{
  private Game a;

  public GameDownloadButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void i()
  {
    if (this.a.getAndroidPackageName() != null)
      new DownloadItem(this.a.getAndroidPackageName()).save();
  }

  protected void a()
  {
    setText("下载");
    setBackgroundResource(2130838100);
  }

  public final void a(int paramInt)
  {
    if (this.a == null)
      return;
    switch (paramInt)
    {
    default:
      a();
      setOnClickListener(new C(this, 0));
      return;
    case 1:
    case 2:
      b();
      setOnClickListener(null);
      return;
    case 8:
      c();
      setOnClickListener(new A(this, 0));
      return;
    case 32:
    }
    d();
    setOnClickListener(new B(this, 0));
  }

  protected void b()
  {
    setText("下载中");
    setBackgroundResource(2130837817);
  }

  protected void c()
  {
    setText("安装");
    setBackgroundResource(2130837819);
  }

  protected void d()
  {
    setText("打开");
    setBackgroundResource(2130838116);
  }

  protected void e()
  {
    Context localContext = getContext();
    if ((localContext instanceof GameDetailActivity))
      b.a(getContext(), "game_center_detail_install", this.a.getName());
    b.a(localContext, "game_center_app_download", this.a.getName());
    if (a.r(localContext) == 1)
    {
      e.a((Activity)localContext, "开始下载...");
      f();
      return;
    }
    k localk = new k(localContext).a("流量提醒");
    Resources localResources = getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(this.a.getAndroidSize());
    localk.b(localResources.getString(2131034304, arrayOfObject)).a(2131034424, new z(this)).b(2131034129, null).b().show();
  }

  protected final void f()
  {
    i();
    new s((Activity)getContext(), this.a).a();
  }

  protected final void g()
  {
    am.d(getContext(), this.a.getAndroidPackageName());
  }

  public final Game h()
  {
    return this.a;
  }

  public void setGame(Game paramGame)
  {
    this.a = paramGame;
  }

  public void setH5View()
  {
    setText("试玩");
    setBackgroundResource(2130838100);
  }

  public void setPlayedView()
  {
    setText("继续");
    setBackgroundResource(2130838100);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameDownloadButton
 * JD-Core Version:    0.6.0
 */