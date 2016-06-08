package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.RelateBookRoot;

final class bA
        implements View.OnClickListener {
    bA(RelateBooksFragment paramRelateBooksFragment, RelateBookRoot paramRelateBookRoot) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = RelateBookListActivity.a(this.b.getActivity(), this.a, "你可能感兴趣", RelateBooksFragment.a(this.b));
        this.b.startActivity(localIntent);
    }
}

