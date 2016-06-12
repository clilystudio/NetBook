package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class Q implements View$OnClickListener {

    private AddVoteItemActivity a;

    Q(AddVoteItemActivity AddVoteItemActivity1) {
        a = AddVoteItemActivity1;
    }

    public final void onClick(View View1) {
        AddVoteItemActivity.a(a);
    }
}
