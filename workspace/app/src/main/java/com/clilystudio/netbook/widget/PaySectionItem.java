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

public class PaySectionItem extends DividerSection {

    ImageView mArrow;
    TextView mBalance;
    ImageView mIcon;
    TextView mLabel;
    public PaySectionItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        int int7;
        int int6;
        Object Object5;
        TypedArray TypedArray4;

        LayoutInflater.from(Context1).inflate(2130903343, (ViewGroup) a());
        ButterKnife.inject((View) this);
        TypedArray4 = Context1.obtainStyledAttributes(AttributeSet2, R$styleable.PaySectionItem);
        Object5 = TypedArray4.getString(0);
        mLabel.setText((CharSequence) Object5);
        int6 = TypedArray4.getResourceId(1, 0);
        mIcon.setImageResource(int6);
        int7 = TypedArray4.getResourceId(2, 0);
        mArrow.setImageResource(int7);
        if (int7 == 2130838032)
            mArrow.setContentDescription((CharSequence) "\u5145\u503C");
        TypedArray4.recycle();
    }

    public final View b() {
        return (View) mArrow;
    }

    public void setBalance(String String1) {
        mBalance.setText((CharSequence) String1);
    }

    public void setBalanceDefault() {
        mBalance.setVisibility(0);
        mBalance.setText((CharSequence) "--");
    }
}
