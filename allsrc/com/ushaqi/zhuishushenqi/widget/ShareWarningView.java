package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.arcsoft.hpay100.a.a;

public class ShareWarningView extends RelativeLayout
{
  private aB a;
  private View.OnClickListener b = new aA(this);

  @InjectView(2131493987)
  ImageView mClose;

  @InjectView(2131492905)
  TextView mContent;

  @InjectView(2131493988)
  Button mNegative;

  @InjectView(2131493989)
  Button mPositive;

  public ShareWarningView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setPadding(0, 0, 0, a.a(paramContext, 22.0F));
    setBackgroundColor(-1);
    LayoutInflater.from(paramContext).inflate(2130903393, this);
    ButterKnife.inject(this);
    this.mNegative.setOnClickListener(this.b);
    this.mClose.setOnClickListener(this.b);
  }

  public void setContentText(String paramString)
  {
    this.mContent.setText(paramString);
  }

  public void setOnCloseListener(aB paramaB)
  {
    this.a = paramaB;
  }

  public void setPositiveListener(View.OnClickListener paramOnClickListener)
  {
    this.mPositive.setOnClickListener(paramOnClickListener);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ShareWarningView
 * JD-Core Version:    0.6.0
 */