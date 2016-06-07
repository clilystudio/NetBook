package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.ushaqi.zhuishushenqi.R.styleable;

public class TopicSectionItem extends DividerSection
{

  @InjectView(2131493028)
  ImageView mIcon;

  @InjectView(2131493515)
  TextView mLabel;

  public TopicSectionItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903232, a());
    ButterKnife.inject(this);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TopicSectionItem);
    String str = localTypedArray.getString(0);
    this.mLabel.setText(str);
    int i = localTypedArray.getResourceId(1, 0);
    this.mIcon.setImageResource(i);
    localTypedArray.recycle();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.TopicSectionItem
 * JD-Core Version:    0.6.0
 */