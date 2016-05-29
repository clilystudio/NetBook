package com.clilystudio.app.netbook.ui.user;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.app.netbook.widget.UserInfoExTaskView;

public class UserInfoTaskLaunchView extends UserInfoExTaskView {
    public UserInfoTaskLaunchView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setExp("经验+10");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserInfoTaskLaunchView
 * JD-Core Version:    0.6.2
 */