package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

final class bl {
    CoverView a;
    TextView b;
    TextView c;

    public bl(bj bj2, View view) {
        this.a = (CoverView) view.findViewById(R.id.avatar);
        this.b = (TextView) view.findViewById(R.id.name);
        this.c = (TextView) view.findViewById(R.id.tv_desc);
    }
}
