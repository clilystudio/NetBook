package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.SmartImageView;

final class e
        implements View.OnClickListener {
    e(d paramd, SmartImageView paramSmartImageView, BookHelpSummary paramBookHelpSummary) {
    }

    public final void onClick(View paramView) {
        this.a.getContext().startActivity(com.clilystudio.netbook.util.e.a(this.a.getContext(), this.b.getAuthor()));
    }
}

