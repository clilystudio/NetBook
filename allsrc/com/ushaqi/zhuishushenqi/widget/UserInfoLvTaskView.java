package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.ushaqi.zhuishushenqi.R.styleable;

public class UserInfoLvTaskView extends UserInfoTaskView
{
  private final boolean a;
  private final int b;

  public UserInfoLvTaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.UserInfoLvTaskView);
    this.a = localTypedArray.getBoolean(0, false);
    this.b = localTypedArray.getInteger(1, 1);
    localTypedArray.recycle();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (this.a)
    {
      this.mExp.setText("等级N");
      ExpView localExpView = this.mExp;
      localExpView.setBackgroundResource(2130837783);
      localExpView.setTextColor(localExpView.getResources().getColor(2131427546));
      return;
    }
    setLv(this.b);
    this.mExp.a();
  }

  public void setLv(int paramInt)
  {
    this.mExp.setText("等级" + paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoLvTaskView
 * JD-Core Version:    0.6.0
 */