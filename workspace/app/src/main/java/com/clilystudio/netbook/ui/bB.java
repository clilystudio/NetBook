package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.BookSummary;

final class bB implements View.OnClickListener {
    private /* synthetic */ BookSummary a;
    private /* synthetic */ RelateBooksFragment b;

    bB(RelateBooksFragment relateBooksFragment, BookSummary bookSummary) {
        this.b = relateBooksFragment;
        this.a = bookSummary;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        int n;
        if (RelateBooksFragment.a(this.b)) {
            a.c((Context) this.b.getActivity(), this.a.getId(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
            b.a(this.b.getActivity(), "book_info_recommend_click", "bfd");
            n = 3;
        } else {
            b.a(this.b.getActivity(), "book_info_recommend_click", "zhuishu");
            n = 1;
        }
        Intent intent = BookInfoActivity.a(this.b.getActivity(), this.a.getId(), n);
        this.b.startActivity(intent);
    }
}
