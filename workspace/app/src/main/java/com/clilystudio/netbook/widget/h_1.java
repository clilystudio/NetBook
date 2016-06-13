package com.clilystudio.netbook.widget;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class h {
    List<AutoFlowView$Word> a = new ArrayList<AutoFlowView$Word>();

    h(AutoFlowView autoFlowView) {
    }

    public final void a(int n) {
        Iterator<AutoFlowView$Word> iterator = this.a.iterator();
        while (iterator.hasNext()) {
            iterator.next().leftMargin = n;
        }
    }
}
