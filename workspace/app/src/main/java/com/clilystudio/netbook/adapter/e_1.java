package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.SmartImageView;

final class e implements View$OnClickListener {

    private SmartImageView a;
    private BookHelpSummary b;
    e(d d1, SmartImageView SmartImageView2, BookHelpSummary BookHelpSummary3) {
        a = SmartImageView2;
        b = BookHelpSummary3;
    }

    public final void onClick(View View1) {
        a.getContext().startActivity(com.clilystudio.netbook.util.e.a(a.getContext(), b.getAuthor()));
    }
}
