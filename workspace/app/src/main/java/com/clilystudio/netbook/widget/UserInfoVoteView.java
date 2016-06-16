package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoVoteView extends UserInfoExTaskView {
    public UserInfoVoteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.findViewById(R.id.task_container).setPadding(0, 0, 0, 0);
        this.setExp("\u7ecf\u9a8c+15");
    }
}
