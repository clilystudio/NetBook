package com.clilystudio.netbook.reader;

import android.content.Context;
import android.widget.Scroller;

public final class M extends Scroller {
    public M(PagerWidget paramPagerWidget, Context paramContext) {
        super(paramContext, new N(paramPagerWidget));
    }

    public final void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
        super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, 400);
    }
}

