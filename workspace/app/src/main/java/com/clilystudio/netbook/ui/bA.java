package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.RelateBookRoot;

final class bA implements View$OnClickListener {

    private RelateBookRoot a;
    private RelateBooksFragment b;
    bA(RelateBooksFragment RelateBooksFragment1, RelateBookRoot RelateBookRoot2) {
        b = RelateBooksFragment1;
        a = RelateBookRoot2;
    }

    public final void onClick(View View1) {
        Intent Intent2 = RelateBookListActivity.a((Context) b.getActivity(), a, "\u4F60\u53EF\u80FD\u611F\u5174\u8DA3", RelateBooksFragment.a(b));

        b.startActivity(Intent2);
    }
}
