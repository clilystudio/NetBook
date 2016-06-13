package com.clilystudio.netbook.ui.post;

import android.view.View;

final class Q
        implements View.OnClickListener {
    private /* synthetic */ AddVoteItemActivity a;

    Q(AddVoteItemActivity addVoteItemActivity) {
        this.a = addVoteItemActivity;
    }

    @Override
    public final void onClick(View view) {
        AddVoteItemActivity.a(this.a);
    }
}
