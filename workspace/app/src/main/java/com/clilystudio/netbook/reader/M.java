package com.clilystudio.netbook.reader;

import android.content.Context;
import android.widget.Scroller;

public final class M
        extends Scroller {
    public M(PagerWidget pagerWidget, Context context) {
        super(context, new N(pagerWidget));
    }

    @Override
    public final void startScroll(int n, int n2, int n3, int n4, int n5) {
        super.startScroll(n, n2, n3, n4, 400);
    }
}
