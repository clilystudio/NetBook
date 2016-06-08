package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PaySectionItem extends DividerSection {
    ImageView mArrow;
    TextView mBalance;
    ImageView mIcon;
    TextView mLabel;

    public PaySectionItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(R.layout.pay_account_item, a());
        mArrow = (ImageView) findViewById(R.id.arrow);
        mBalance = (TextView) findViewById(R.id.balance);
        mIcon = (ImageView) findViewById(R.id.distillate_flag);
        mLabel = (TextView) findViewById(R.id.label);
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

