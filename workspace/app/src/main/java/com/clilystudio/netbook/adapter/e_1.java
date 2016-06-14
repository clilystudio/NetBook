package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.SmartImageView;

final class e implements View.OnClickListener {
    private /* synthetic */ SmartImageView a;
    private /* synthetic */ BookHelpSummary b;

    e(d d2, SmartImageView smartImageView, BookHelpSummary bookHelpSummary) {
        this.a = smartImageView;
        this.b = bookHelpSummary;
    }

    @Override
    public final void onClick(View view) {
        this.a.getContext().startActivity(com.clilystudio.netbook.util.e.a(this.a.getContext(), this.b.getAuthor()));
    }
}
