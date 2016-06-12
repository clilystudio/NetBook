package com.clilystudio.netbook.reader;

import android.view.View;

import java.util.Comparator;

final class cz implements Comparator {

    public final int compare(Object Object1, Object Object2) {
        View View3 = (View) Object1;
        View View4 = (View) Object2;
        ct ct5 = (ct) View3.getLayoutParams();
        ct ct6 = (ct) View4.getLayoutParams();

        if (ct5.a == ct6.a)
            return ct5.e - ct6.e;
        if (ct5.a)
            return 1;
        else
            return -1;
    }
}
