package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.RelateBookRoot;

final class bA implements View.OnClickListener {
    private /* synthetic */ RelateBookRoot a;
    private /* synthetic */ RelateBooksFragment b;

    bA(RelateBooksFragment relateBooksFragment, RelateBookRoot relateBookRoot) {
        this.b = relateBooksFragment;
        this.a = relateBookRoot;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = RelateBookListActivity.a((Context) this.b.getActivity(), this.a, "\u4f60\u53ef\u80fd\u611f\u5174\u8da3", RelateBooksFragment.a(this.b));
        this.b.startActivity(intent);
    }
}
