package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.e;

final class m
        implements View.OnClickListener {
    m(l paraml, DiscussSummary paramDiscussSummary) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
    }
}

