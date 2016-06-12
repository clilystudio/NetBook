package com.clilystudio.netbook.util;

import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;

public abstract class al extends BaseAdapter {

    private ar a = new ar();

    protected final View a(int int1, boolean boolean2) {
        View View3 = a.a[int1];

        if (View3 != null) {
            if (boolean2) {
                if (8 != View3.getVisibility())
                    View3.setVisibility(8);
            } else if (View3.getVisibility() != 0) {
                View3.setVisibility(0);
                return View3;
            }
        }
        return View3;
    }

    protected final View a(View View1, int[] int_1darray2) {
        ar ar3 = a;
        Object[] Object_1darray4 = new View[int_1darray2.length];
        int int5;

        for (int5 = 0; int5 < int_1darray2.length; ++int5)
            Object_1darray4[int5] = View1.findViewById(int_1darray2[int5]);
        View1.setTag(Object_1darray4);
        ar3.a = (View[]) Object_1darray4;
        return View1;
    }

    protected final TextView a(int int1, CharSequence CharSequence2) {
        TextView TextView3 = (TextView) a.a[int1];

        TextView3.setText(CharSequence2);
        return TextView3;
    }

    protected final Object a(int int1, Class Class2) {
        return a.a[int1];
    }

    protected final void a(View View1) {
        a.a = (View[]) View1.getTag();
    }
}
