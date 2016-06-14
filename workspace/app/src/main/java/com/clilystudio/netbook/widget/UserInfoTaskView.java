package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R$styleable;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class UserInfoTaskView extends FrameLayout {
    private final int a;
    private final String b;
    @InjectView(value = 2131493234)
    ExpView mExp;
    @InjectView(value = 2131493028)
    ImageView mIcon;
    @InjectView(value = 2131492936)
    TextView mTitle;

    public UserInfoTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.UserInfoTaskView);
        this.a = typedArray.getResourceId(0, 2130838241);
        this.b = typedArray.getString(1);
        typedArray.recycle();
        LayoutInflater.from(context).inflate(2130903418, (ViewGroup) this);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mIcon = (ImageView) findViewById(2131493028);
        this.mTitle = (TextView) findViewById(2131492936);
        this.mExp = (ExpView) findViewById( 2131493234);
        this.mIcon.setImageResource(this.a);
        this.mTitle.setText(this.b);
    }

    public void setExp(String string) {
        if (this.mExp != null) {
            this.mExp.setText(string);
        }
    }
}
