package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.e;

final class m implements View.OnClickListener {
    private /* synthetic */ DiscussSummary a;

    m(l l2, DiscussSummary discussSummary) {
        this.a = discussSummary;
    }

    @Override
    public final void onClick(View view) {
        view.getContext().startActivity(e.a(view.getContext(), this.a.getAuthor()));
    }
}
