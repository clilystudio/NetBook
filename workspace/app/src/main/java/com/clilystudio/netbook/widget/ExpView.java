package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class ExpView extends TextView {
    public ExpView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setTextSize(9.0f);
        this.setGravity(17);
        this.a();
    }

    public final void a() {
        this.setBackgroundResource(R.drawable.exp_task_deactive);
        this.setTextColor(this.getResources().getColor(R.color.user_info_exp_deactive));
    }
}
