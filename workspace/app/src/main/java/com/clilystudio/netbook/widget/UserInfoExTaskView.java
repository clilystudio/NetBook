package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoExTaskView extends UserInfoTaskView {
    public UserInfoExTaskView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setExp("经验+5");
    }
}

