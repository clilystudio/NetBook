package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class LinearListView extends LinearLayout
{
  private static final Integer a = Integer.valueOf(1);
  private static final Integer b = Integer.valueOf(2);
  private static final Integer c = Integer.valueOf(0);
  private Context d;
  private LinearLayout.LayoutParams e;
  private List<Track> f = new ArrayList();
  private int g = 1;
  private ad h;

  public LinearListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d = paramContext;
  }

  private void a(int paramInt1, int paramInt2)
  {
    View localView = LayoutInflater.from(this.d).inflate(2130903265, null);
    localView.setOnClickListener(new ac(this, paramInt1));
    ((TextView)localView.findViewById(2131493622)).setText(paramInt2);
    ((TextView)localView.findViewById(2131493623)).setText(((Track)this.f.get(paramInt1 - 1)).getTrackTitle());
    addView(localView, this.e);
  }

  private void b(int paramInt, boolean paramBoolean)
  {
    ImageView localImageView = (ImageView)getChildAt(paramInt - 1).findViewById(2131493624);
    try
    {
      localAnimationDrawable = (AnimationDrawable)localImageView.getDrawable();
      if (paramBoolean)
      {
        localAnimationDrawable.start();
        return;
      }
    }
    catch (Exception localException)
    {
      AnimationDrawable localAnimationDrawable;
      while (true)
      {
        localImageView.setImageResource(2130837602);
        localAnimationDrawable = (AnimationDrawable)localImageView.getDrawable();
      }
      localAnimationDrawable.stop();
    }
  }

  public final List<Track> a()
  {
    return this.f;
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Integer localInteger = a; ; localInteger = b)
    {
      int i = localInteger.intValue();
      ((Track)this.f.get(paramInt - 1)).setExtra(Integer.valueOf(i));
      b(paramInt, paramBoolean);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    Collections.reverse(this.f);
    removeAllViews();
    int i = this.f.size();
    int j = 1;
    if (j <= i)
    {
      if (paramBoolean);
      for (int k = j; ; k = 1 + (i - j))
      {
        a(j, k);
        j++;
        break;
      }
    }
  }

  public void setCurrentPlayIndex(int paramInt)
  {
    this.g = paramInt;
  }

  public void setItemHeight(int paramInt)
  {
    this.e = new LinearLayout.LayoutParams(-1, paramInt);
  }

  public void setPlayButtonDefault(int paramInt)
  {
    if ((paramInt > 0) && (getChildAt(paramInt - 1) != null))
    {
      ((ImageView)getChildAt(paramInt - 1).findViewById(2131493624)).setImageResource(2130837589);
      ((Track)this.f.get(paramInt - 1)).setExtra(c);
    }
  }

  public void setPlayTrackInterface(ad paramad)
  {
    this.h = paramad;
  }

  public void setShowData(List<Track> paramList, boolean paramBoolean, int paramInt)
  {
    if (paramList == null)
      throw new IllegalArgumentException("tracks must not null");
    if (paramInt == 1)
    {
      this.f.clear();
      removeAllViews();
    }
    int i = 1 + this.f.size();
    this.f.addAll(paramList);
    int j = this.f.size();
    if (i <= j)
    {
      if (paramBoolean);
      for (int k = i; ; k = 1 + (j - i))
      {
        a(i, k);
        i++;
        break;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.LinearListView
 * JD-Core Version:    0.6.0
 */