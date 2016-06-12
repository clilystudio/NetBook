package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.BookSummary;

final class bB implements View$OnClickListener {

    private BookSummary a;
    private RelateBooksFragment b;
    bB(RelateBooksFragment RelateBooksFragment1, BookSummary BookSummary2) {
        b = RelateBooksFragment1;
        a = BookSummary2;
    }

    public final void onClick(View View1) {
        int int2;
        Intent Intent3;

        if (RelateBooksFragment.a(b)) {
            com.clilystudio.netbook.hpay100.a.a.c((Context) b.getActivity(), a.getId(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
            com.clilystudio.netbook.umeng.a.b.a((Context) b.getActivity(), "book_info_recommend_click", "bfd");
            int2 = 3;
        } else {
            com.clilystudio.netbook.umeng.a.b.a((Context) b.getActivity(), "book_info_recommend_click", "zhuishu");
            int2 = 1;
        }
        Intent3 = BookInfoActivity.a((Context) b.getActivity(), a.getId(), int2);
        b.startActivity(Intent3);
    }
}
