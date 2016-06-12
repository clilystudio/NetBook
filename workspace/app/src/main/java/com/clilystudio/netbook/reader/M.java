package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public final class M extends Scroller {

    public M(PagerWidget PagerWidget1, Context Context2) {
        super(Context2, (Interpolator) new N(PagerWidget1));
    }

    public final void startScroll(int int1, int int2, int int3, int int4, int int5) {
        super.startScroll(int1, int2, int3, int4, 400);
    }
}
