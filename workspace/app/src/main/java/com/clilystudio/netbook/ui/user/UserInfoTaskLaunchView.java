package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.widget.UserInfoExTaskView;

public class UserInfoTaskLaunchView extends UserInfoExTaskView {
    public UserInfoTaskLaunchView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setExp("经验+10");
    }
}

