package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;

final class ao extends ay {
    TextView i;
    Button j;
    View k;

    public ao(RemoveAdActivity removeAdActivity, View view) {
        super(view);
        this.i = (TextView) view.findViewById(R.id.vip_content);
        this.j = (Button) view.findViewById(R.id.vip_purchase);
        this.k = view.findViewById(R.id.divider);
    }
}
