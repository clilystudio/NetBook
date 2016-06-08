package com.clilystudio.netbook.widget;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class h {
    List<AutoFlowView.Word> a = new ArrayList();

    h(AutoFlowView paramAutoFlowView) {
    }

    public final void a(int paramInt) {
        Iterator localIterator = this.a.iterator();
        while (localIterator.hasNext())
            ((AutoFlowView.Word) localIterator.next()).leftMargin = paramInt;
    }
}

