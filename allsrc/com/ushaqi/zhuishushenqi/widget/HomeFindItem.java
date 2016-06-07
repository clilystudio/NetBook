package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.ui.MaskAbleImageView;

public class HomeFindItem extends FrameLayout
{
  private Intent a;

  @InjectView(2131493028)
  MaskAbleImageView mIcon;

  @InjectView(2131493681)
  ImageView mSubFlag;

  @InjectView(2131493683)
  TextView mSubText;

  @InjectView(2131492936)
  TextView mTitle;

  public HomeFindItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public HomeFindItem(Context paramContext, String paramString, int paramInt1, int paramInt2, Intent paramIntent)
  {
    super(paramContext);
    this.a = paramIntent;
    LayoutInflater.from(paramContext).inflate(2130903283, this);
    ButterKnife.inject(this);
    this.mIcon.setImageResource(paramInt1);
    this.mTitle.setText(paramString);
    if (paramInt2 != 0)
      this.mSubFlag.setImageResource(paramInt2);
    setOnClickListener(new Z(this, paramContext, paramString));
  }

  public HomeFindItem(Context paramContext, String paramString, int paramInt, Intent paramIntent)
  {
    this(paramContext, paramString, paramInt, 0, paramIntent);
  }

  protected void a(Context paramContext, String paramString)
  {
    paramContext.startActivity(this.a);
    b.a(paramContext, "home_find_item_click", paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.HomeFindItem
 * JD-Core Version:    0.6.0
 */