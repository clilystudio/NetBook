package com.clilystudio.netbook.widget;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class h {

    List a = new ArrayList();

    h(AutoFlowView AutoFlowView1) {
    }

    public final void a(int int1) {
        Iterator Iterator2 = a.iterator();

        while (Iterator2.hasNext())
            ((AutoFlowView$Word) Iterator2.next()).leftMargin = int1;
    }
}
