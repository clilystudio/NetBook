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

    public UserInfoTaskView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.UserInfoTaskView);
        this.a = localTypedArray.getResourceId(0, 2130838241);
        this.b = localTypedArray.getString(1);
        localTypedArray.recycle();
        LayoutInflater.from(paramContext).inflate(R.layout.user_info_task, this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        mExp = (ExpView) findViewById(R.id.exp);
        mIcon = (ImageView) findViewById(R.id.icon);
        mTitle = (TextView) findViewById(R.id.title);
        this.mIcon.setImageResource(this.a);
        this.mTitle.setText(this.b);
    }

    public void setExp(String paramString) {
        if (this.mExp != null)
            this.mExp.setText(paramString);
    }
}

