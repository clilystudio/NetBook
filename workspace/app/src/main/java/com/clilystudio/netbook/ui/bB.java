package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.umeng.a_Pack.b;

final class bB
        implements View.OnClickListener {
    bB(RelateBooksFragment paramRelateBooksFragment, BookSummary paramBookSummary) {
    }

    public final void onClick(View paramView) {
        if (RelateBooksFragment.a(this.b)) {
            a.c(this.b.getActivity(), this.a.getId(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
            b.a(this.b.getActivity(), "book_info_recommend_click", "bfd");
        }
        for (int i = 3; ; i = 1) {
            Intent localIntent = BookInfoActivity.a(this.b.getActivity(), this.a.getId(), i);
            this.b.startActivity(localIntent);
            return;
            b.a(this.b.getActivity(), "book_info_recommend_click", "zhuishu");
        }
    }
}

