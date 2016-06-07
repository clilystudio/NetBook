package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.ay;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class GameMicroFragment$LayoutAdapter$PromotionViewPager extends ay
{
  ArrayList<View> i;
  Handler j = new ag(this);
  private ArrayList<ImageView> l;

  @InjectView(2131493484)
  LinearLayout mViewDots;

  @InjectView(2131493483)
  ViewPager mViewPager;

  public GameMicroFragment$LayoutAdapter$PromotionViewPager(GameMicroFragment.LayoutAdapter paramLayoutAdapter, View paramView)
  {
    super(paramView);
    ButterKnife.inject(this, paramView);
    this.i = new ArrayList();
    this.l = new ArrayList();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(20, 20, 20, 20);
    Game[] arrayOfGame = GameMicroFragment.a(paramLayoutAdapter.a);
    int m = arrayOfGame.length;
    int n = 0;
    if (n < m)
    {
      Game localGame = arrayOfGame[n];
      SmartImageView localSmartImageView = new SmartImageView(paramLayoutAdapter.a.getActivity());
      localSmartImageView.setLayoutParams(localLayoutParams);
      localSmartImageView.setImageUrl(localGame.getBanner());
      localSmartImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      localSmartImageView.setOnClickListener(new ac(this, paramLayoutAdapter, localGame.get_id()));
      this.i.add(localSmartImageView);
      ImageView localImageView = new ImageView(paramLayoutAdapter.a.getActivity());
      if (this.l.size() == 0);
      for (int i1 = 2130837927; ; i1 = 2130837926)
      {
        localImageView.setImageResource(i1);
        this.l.add(localImageView);
        this.mViewDots.addView(localImageView, localLayoutParams);
        n++;
        break;
      }
    }
  }

  private static void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramImageView.setImageResource(2130837927);
      return;
    }
    paramImageView.setImageResource(2130837926);
  }

  private void r()
  {
    if (this.k.a.a == null)
      this.k.a.a = new Timer();
    s();
    this.k.a.b = new af(this);
    this.k.a.a.schedule(this.k.a.b, 5000L, 5000L);
  }

  private void s()
  {
    if (this.k.a.b != null)
    {
      this.k.a.b.cancel();
      this.k.a.b = null;
    }
  }

  public final void q()
  {
    this.mViewPager.setAdapter(new ah(this));
    this.mViewPager.addOnPageChangeListener(new ad(this));
    this.mViewPager.setOnTouchListener(new ae(this));
    this.mViewPager.setCurrentItem(this.k.a.c);
    r();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.GameMicroFragment.LayoutAdapter.PromotionViewPager
 * JD-Core Version:    0.6.0
 */