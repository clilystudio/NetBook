package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.AbsListView$LayoutParams;
import android.widget.LinearLayout;

public class PostHeader extends LinearLayout {

    public PostHeader(Context Context1) {
        super(Context1);
        setOrientation(1);
        LayoutInflater.from(Context1).inflate(2130903352, (ViewGroup) this);
        setLayoutParams((ViewGroup$LayoutParams) new AbsListView$LayoutParams(-1, -1));
    }

    public final void a() {
        findViewById(2131493842).setOnClickListener((View$OnClickListener) new ao(this));
    }

    public final void a(int int1) {
        if (int1 >= 2) {
            int[] int_1darray2 = {2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946};
            int int3;

            if (int1 >= 7)
                int1 = 7;
            for (int3 = 0; int3 < int1; ++int3)
                findViewById(int_1darray2[int3]).setVisibility(0);
            findViewById(int_1darray2[int1 - 1]).findViewById(2131493098).setVisibility(8);
            findViewById(2131493359).setVisibility(0);
            findViewById(2131493360).setVisibility(0);
        }
    }

    public final void a(boolean boolean1) {
        findViewById(2131493842).setVisibility(8);
    }

    public final void b() {
        findViewById(2131493843).setOnClickListener((View$OnClickListener) new aq(this));
    }
}
