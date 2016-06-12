package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoExTaskView extends UserInfoTaskView {

    public UserInfoExTaskView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setExp("\u7ECF\u9A8C+5");
    }
}
