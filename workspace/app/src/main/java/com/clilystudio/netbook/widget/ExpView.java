package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class ExpView
        extends TextView {
    public ExpView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setTextSize(9.0f);
        this.setGravity(17);
        this.a();
    }

    public final void a() {
        this.setBackgroundResource(2130837784);
        this.setTextColor(this.getResources().getColor(2131427547));
    }
}
