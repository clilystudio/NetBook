package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.game.ao;

public class GiftGameGameButton extends Button
{
  private GiftGame a;

  public GiftGameGameButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void h()
  {
    if (this.a.getAndroidPackageName() != null)
      new DownloadItem(this.a.getAndroidPackageName()).save();
  }

  protected void a()
  {
    setText("我要领");
    setTextColor(getResources().getColor(2131427548));
    setBackgroundResource(2130837819);
  }

  public final void a(int paramInt)
  {
    if (this.a == null)
      return;
    switch (paramInt)
    {
    default:
      a();
      setOnClickListener(new T(this, 0));
      return;
    case 1:
    case 2:
      b();
      setOnClickListener(null);
      return;
    case 8:
      c();
      setOnClickListener(new R(this, 0));
      return;
    case 32:
    }
    setText("打开");
    setTextColor(getResources().getColor(2131427356));
    setBackgroundResource(2130837817);
    setOnClickListener(new S(this, 0));
  }

  protected void b()
  {
    setText("下载中");
    setTextColor(getResources().getColor(2131427356));
    setBackgroundResource(2130837729);
  }

  protected void c()
  {
    setText("安装");
    setTextColor(getResources().getColor(2131427548));
    setBackgroundResource(2130837819);
  }

  protected void d()
  {
    View localView = View.inflate(getContext(), 2130903194, null);
    ((SmartImageView)localView.findViewById(2131493394)).setImageUrl(this.a.icon);
    ((TextView)localView.findViewById(2131493397)).setText("有 " + this.a.followers + " 个小伙伴正在玩");
    ((TextView)localView.findViewById(2131493395)).setText(this.a.getName());
    ((TextView)localView.findViewById(2131493396)).setText(com.arcsoft.hpay100.a.a.c(this.a.androidSize));
    com.clilystudio.netbook.view.a locala = new com.clilystudio.netbook.view.a(getContext());
    ao.a((Activity)getContext(), this.a);
    GiftGameGetButton localGiftGameGetButton = (GiftGameGetButton)localView.findViewById(2131493398);
    localGiftGameGetButton.setGame(this.a);
    localGiftGameGetButton.a(this.a.getDownloadStatus());
    localGiftGameGetButton.setBottomDialog(locala);
    locala.a(localView).show();
  }

  protected final void e()
  {
    h();
    new ao((Activity)getContext(), this.a).a();
  }

  protected final void f()
  {
    am.d(getContext(), this.a.getAndroidPackageName());
  }

  public final GiftGame g()
  {
    return this.a;
  }

  public void setGame(GiftGame paramGiftGame)
  {
    this.a = paramGiftGame;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.GiftGameGameButton
 * JD-Core Version:    0.6.0
 */