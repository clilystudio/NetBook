package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R$styleable;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PaySectionItem extends DividerSection {
    @InjectView(value = 2131493199)
    ImageView mArrow;
    @InjectView(value = 2131493823)
    TextView mBalance;
    @InjectView(value = 2131493028)
    ImageView mIcon;
    @InjectView(value = 2131493515)
    TextView mLabel;

    public PaySectionItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(2130903343, (ViewGroup) this.a());
        this.mIcon = (ImageView) findViewById(2131493028);
        this.mLabel = (TextView) findViewById(2131493515);
        this.mBalance = (TextView) findViewById(2131493823);
        this.mArrow = (ImageView) findViewById(2131493199);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.PaySectionItem);
        String string = typedArray.getString(0);
        this.mLabel.setText(string);
        int n = typedArray.getResourceId(1, 0);
        this.mIcon.setImageResource(n);
        int n2 = typedArray.getResourceId(2, 0);
        this.mArrow.setImageResource(n2);
        if (n2 == 2130838032) {
            this.mArrow.setContentDescription("\u5145\u503c");
        }
        typedArray.recycle();
    }

    public final View b() {
        return this.mArrow;
    }

    public void setBalance(String string) {
        this.mBalance.setText(string);
    }

    public void setBalanceDefault() {
        this.mBalance.setVisibility(View.VISIBLE);
        this.mBalance.setText("--");
    }
}
