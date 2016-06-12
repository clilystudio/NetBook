
package com.clilystudio.netbook.widget;

import java.util.Comparator;

final class g implements Comparator {

    g(AutoFlowView AutoFlowView1)
    {
    }

    public final volatile int compare(Object Object1, Object Object2)
    {
        AutoFlowView$Word Word3 = (AutoFlowView$Word) Object1;
        AutoFlowView$Word Word4 = (AutoFlowView$Word) Object2;

        return Word3.show - Word4.show;
    }
}
