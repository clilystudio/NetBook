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
    ImageView mArrow;
    TextView mBalance;
    ImageView mIcon;
    TextView mLabel;

    public PaySectionItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.pay_account_item, (ViewGroup) this.a());
        this.mIcon = (ImageView) findViewById(R.id.icon);
        this.mLabel = (TextView) findViewById(R.id.label);
        this.mBalance = (TextView) findViewById(R.id.balance);
        this.mArrow = (ImageView) findViewById(R.id.arrow);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.PaySectionItem);
        String string = typedArray.getString(0);
        this.mLabel.setText(string);
        int n = typedArray.getResourceId(1, 0);
        this.mIcon.setImageResource(n);
        int n2 = typedArray.getResourceId(2, 0);
        this.mArrow.setImageResource(n2);
        if (n2 == R.drawable.pay_charge_icon) {
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
