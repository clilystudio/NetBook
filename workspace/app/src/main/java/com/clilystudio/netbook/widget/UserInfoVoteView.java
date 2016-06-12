package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoVoteView extends UserInfoExTaskView {

    public UserInfoVoteView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(2131494047).setPadding(0, 0, 0, 0);
        setExp("\u7ECF\u9A8C+15");
    }
}
