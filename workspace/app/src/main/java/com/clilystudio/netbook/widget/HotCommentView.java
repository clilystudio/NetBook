package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class HotCommentView
        extends LinearLayout {
    public HotCommentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a(String string) {
        new ab(this, 0).b((Object[]) new String[]{string});
    }
}
