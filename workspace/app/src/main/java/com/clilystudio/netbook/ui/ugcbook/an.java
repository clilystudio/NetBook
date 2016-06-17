package com.clilystudio.netbook.ui.ugcbook;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.R;

public final class an extends ay {
    final /* synthetic */ ak k;
    TextView i;
    String j;

    public an(final ak ak2, View view) {
        this.k = ak2;
        super(view);
        this.i = (TextView) view.findViewById(R.id.ugc_filter_name);
        view.findViewById(R.id.ugc_all_layout);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (an.this.j == null) {
                    return;
                }
                an.this.k.a = false;
                UGCMainActivity.a(an.this.k.c, an.this.j);
                an.this.k.c(0);
            }
        });
    }
}
