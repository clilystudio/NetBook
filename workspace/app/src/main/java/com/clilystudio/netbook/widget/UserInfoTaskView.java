package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R$styleable;

import butterknife.ButterKnife;

public class UserInfoTaskView extends FrameLayout {

    ExpView mExp;
    ImageView mIcon;
    TextView mTitle;
    private int a;     // final access specifier removed
    private String b;     // final access specifier removed
    public UserInfoTaskView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes(AttributeSet2, R$styleable.UserInfoTaskView);
        a = TypedArray3.getResourceId(0, 2130838241);
        b = TypedArray3.getString(1);
        TypedArray3.recycle();
        LayoutInflater.from(Context1).inflate(2130903418, (ViewGroup) this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
        mIcon.setImageResource(a);
        mTitle.setText((CharSequence) b);
    }

    public void setExp(String String1) {
        if (mExp != null)
            mExp.setText((CharSequence) String1);
    }
}
