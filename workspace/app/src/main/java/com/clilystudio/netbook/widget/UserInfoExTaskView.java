package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoExTaskView extends UserInfoTaskView {
    public UserInfoExTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setExp("经验+5");
    }
}
