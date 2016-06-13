package com.clilystudio.netbook.ui.post;

import android.view.View;

final class R
        implements View.OnClickListener {
    private /* synthetic */ AddVoteItemActivity a;

    R(AddVoteItemActivity addVoteItemActivity) {
        this.a = addVoteItemActivity;
    }

    @Override
    public final void onClick(View view) {
        if (AddVoteItemActivity.b(this.a)) {
            AddVoteItemActivity.c(this.a);
        }
    }
}
