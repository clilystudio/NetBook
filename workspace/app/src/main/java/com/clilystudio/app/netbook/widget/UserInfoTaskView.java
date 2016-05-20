package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.app.netbook.R.styleable;

public class UserInfoTaskView extends FrameLayout
{
  private final int a;
  private final String b;

  @InjectView(2131493234)
  ExpView mExp;

  @InjectView(2131493028)
  ImageView mIcon;

  @InjectView(2131492936)
  TextView mTitle;

  public UserInfoTaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.UserInfoTaskView);
    this.a = localTypedArray.getResourceId(0, 2130838241);
    this.b = localTypedArray.getString(1);
    localTypedArray.recycle();
    LayoutInflater.from(paramContext).inflate(2130903418, this);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ButterKnife.inject(this);
    this.mIcon.setImageResource(this.a);
    this.mTitle.setText(this.b);
  }

  public void setExp(String paramString)
  {
    if (this.mExp != null)
      this.mExp.setText(paramString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoTaskView
 * JD-Core Version:    0.6.2
 */