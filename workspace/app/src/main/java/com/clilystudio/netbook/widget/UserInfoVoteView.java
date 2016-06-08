package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoVoteView extends UserInfoExTaskView {
    public UserInfoVoteView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(2131494047).setPadding(0, 0, 0, 0);
        setExp("经验+15");
    }
}

