package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;

public class UserInfoLvTaskView extends UserInfoTaskView {
    private final boolean a;
    private final int b;

    public UserInfoLvTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.UserInfoLvTaskView);
        this.a = typedArray.getBoolean(0, false);
        this.b = typedArray.getInteger(1, 1);
        typedArray.recycle();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.a) {
            this.mExp.setText("\u7b49\u7ea7N");
            ExpView expView = this.mExp;
            expView.setBackgroundResource(2130837783);
            expView.setTextColor(expView.getResources().getColor(2131427546));
            return;
        }
        this.setLv(this.b);
        this.mExp.a();
    }

    public void setLv(int n) {
        this.mExp.setText("\u7b49\u7ea7" + n);
    }
}
