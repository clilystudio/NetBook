package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class T implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ Q b;

    T(Q q, int n) {
        this.b = q;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        UGCGuideEditBooksActivity.b(this.b.a, this.a);
    }
}
