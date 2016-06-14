package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class R implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ Q b;

    R(Q q, int n) {
        this.b = q;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        UGCGuideEditBooksActivity.a(this.b.a, this.a);
    }
}
