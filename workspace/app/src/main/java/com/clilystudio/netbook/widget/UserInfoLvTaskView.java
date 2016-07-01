package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import com.clilystudio.netbook.R;

public class UserInfoLvTaskView extends UserInfoTaskView {
    private final boolean a;
    private final int b;

    public UserInfoLvTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.UserInfoLvTaskView);
        this.a = typedArray.getBoolean(R.styleable.UserInfoLvTaskView_lv, false);
        this.b = typedArray.getInteger(R.styleable.UserInfoLvTaskView_unknown, 1);
        typedArray.recycle();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.a) {
            this.mExp.setText("等级N");
            ExpView expView = this.mExp;
            expView.setBackgroundResource(R.drawable.exp_task_active);
            expView.setTextColor(expView.getResources().getColor(R.color.user_info_exp_active));
            return;
        }
        this.setLv(this.b);
        this.mExp.a();
    }

    public void setLv(int n) {
        String text = "等级" + n;
        this.mExp.setText(text);
    }
}
