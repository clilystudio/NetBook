package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;


public class UserInfoTaskView extends FrameLayout {
    private final int a;
    private final String b;
    ExpView mExp;
    ImageView mIcon;
    TextView mTitle;

    public UserInfoTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.UserInfoTaskView);
        this.a = typedArray.getResourceId(R.styleable.UserInfoTaskView_aicon, R.drawable.user_info_launch);
        this.b = typedArray.getString(R.styleable.UserInfoTaskView_atitle);
        typedArray.recycle();
        LayoutInflater.from(context).inflate(R.layout.user_info_task, this);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mIcon = (ImageView) findViewById(R.id.icon);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mExp = (ExpView) findViewById( R.id.exp);
        this.mIcon.setImageResource(this.a);
        this.mTitle.setText(this.b);
    }

    public void setExp(String string) {
        if (this.mExp != null) {
            this.mExp.setText(string);
        }
    }
}
