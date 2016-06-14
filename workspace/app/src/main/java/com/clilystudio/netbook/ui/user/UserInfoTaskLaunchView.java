package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.widget.UserInfoExTaskView;

public class UserInfoTaskLaunchView extends UserInfoExTaskView {
    public UserInfoTaskLaunchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setExp("\u7ecf\u9a8c+10");
    }
}
