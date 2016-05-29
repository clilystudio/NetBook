package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.model.DiscussSummary;
import com.clilystudio.app.netbook.util.e;

final class m
        implements View.OnClickListener {
    m(l paraml, DiscussSummary paramDiscussSummary) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.m
 * JD-Core Version:    0.6.2
 */