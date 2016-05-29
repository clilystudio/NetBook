package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PaySectionItem extends DividerSection {

    @InjectView(2131493199)
    ImageView mArrow;

    @InjectView(2131493823)
    TextView mBalance;

    @InjectView(2131493028)
    ImageView mIcon;

    @InjectView(2131493515)
    TextView mLabel;

    public PaySectionItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(2130903343, a());
        ButterKnife.inject(this);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PaySectionItem);
        String str = localTypedArray.getString(0);
        this.mLabel.setText(str);
        int i = localTypedArray.getResourceId(1, 0);
        this.mIcon.setImageResource(i);
        int j = localTypedArray.getResourceId(2, 0);
        this.mArrow.setImageResource(j);
        if (j == 2130838032)
            this.mArrow.setContentDescription("充值");
        localTypedArray.recycle();
    }

    public final View b() {
        return this.mArrow;
    }

    public void setBalance(String paramString) {
        this.mBalance.setText(paramString);
    }

    public void setBalanceDefault() {
        this.mBalance.setVisibility(0);
        this.mBalance.setText("--");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PaySectionItem
 * JD-Core Version:    0.6.2
 */