package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;

public class PostHeader
        extends LinearLayout {
    public PostHeader(Context context) {
        super(context);
        this.setOrientation(1);
        LayoutInflater.from(context).inflate(2130903352, (ViewGroup) this);
        this.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    }

    public final void a() {
        this.findViewById(2131493842).setOnClickListener(new ao(this));
    }

    public final void a(int n) {
        if (n < 2) {
            return;
        }
        int[] arrn = new int[]{2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946};
        if (n >= 7) {
            n = 7;
        }
        for (int i = 0; i < n; ++i) {
            this.findViewById(arrn[i]).setVisibility(0);
        }
        this.findViewById(arrn[n - 1]).findViewById(2131493098).setVisibility(8);
        this.findViewById(2131493359).setVisibility(0);
        this.findViewById(2131493360).setVisibility(0);
    }

    public final void a(boolean bl) {
        this.findViewById(2131493842).setVisibility(8);
    }

    public final void b() {
        this.findViewById(2131493843).setOnClickListener(new aq(this));
    }
}
