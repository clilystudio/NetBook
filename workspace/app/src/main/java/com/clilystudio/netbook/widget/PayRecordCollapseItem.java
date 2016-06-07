package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class PayRecordCollapseItem extends LinearLayout
{

  @InjectView(2131493578)
  LinearLayout mItemContainer;

  public PayRecordCollapseItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(String[] paramArrayOfString, int paramInt)
  {
    this.mItemContainer.removeAllViews();
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      TextView localTextView = (TextView)localLayoutInflater.inflate(2130903348, this.mItemContainer, false);
      localTextView.setText(str);
      this.mItemContainer.addView(localTextView);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ButterKnife.inject(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.PayRecordCollapseItem
 * JD-Core Version:    0.6.0
 */