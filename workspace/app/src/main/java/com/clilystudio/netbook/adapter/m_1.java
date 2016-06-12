package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.e;

final class m implements View$OnClickListener {

    private DiscussSummary a;

    m(l l1, DiscussSummary DiscussSummary2) {
        a = DiscussSummary2;
    }

    public final void onClick(View View1) {
        View1.getContext().startActivity(e.a(View1.getContext(), a.getAuthor()));
    }
}
