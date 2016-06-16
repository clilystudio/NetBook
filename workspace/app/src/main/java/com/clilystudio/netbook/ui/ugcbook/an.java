package com.clilystudio.netbook.ui.ugcbook;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.TextView;

public final class an extends ay {
    final /* synthetic */ ak k;
    TextView i;
    String j;

    public an(ak ak2, View view) {
        this.k = ak2;
        super(view);
        this.i = (TextView) view.findViewById(R.id.ugc_filter_name);
        view.findViewById(R.id.ugc_all_layout);
        view.setOnClickListener(new ao(this, ak2));
    }
}
