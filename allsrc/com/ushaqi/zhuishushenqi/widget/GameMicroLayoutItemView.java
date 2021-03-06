package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroLayoutItemView extends LinearLayout
{
  boolean a = false;

  @InjectView(2131493705)
  GameDownloadButton mAction;

  @InjectView(2131493025)
  GameImageView mImage;

  @InjectView(2131493018)
  TextView mSubTitle;

  @InjectView(2131492936)
  TextView mTitle;

  public GameMicroLayoutItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setOrientation(1);
    LayoutInflater.from(getContext()).inflate(2130903421, this);
    ButterKnife.inject(this);
  }

  public void setHasPlayed(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameMicroLayoutItemView
 * JD-Core Version:    0.6.0
 */