package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class HotCommentView extends LinearLayout {
    public HotCommentView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public final void a(String paramString) {
        new ab(this, 0).b(new String[]{paramString});
    }
}

