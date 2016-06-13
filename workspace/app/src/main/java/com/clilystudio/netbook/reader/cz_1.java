package com.clilystudio.netbook.reader;

import android.view.View;

import java.util.Comparator;

final class cz
        implements Comparator<View> {
    cz() {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        View view = (View) object;
        View view2 = (View) object2;
        ct ct2 = (ct) view.getLayoutParams();
        ct ct3 = (ct) view2.getLayoutParams();
        if (ct2.a != ct3.a) {
            if (ct2.a) {
                return 1;
            }
            return -1;
        }
        return ct2.e - ct3.e;
    }
}
