package com.clilystudio.netbook.ui.post;

import android.view.View;

final class R
        implements View.OnClickListener {
    R(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(View paramView) {
        if (AddVoteItemActivity.b(this.a))
            AddVoteItemActivity.c(this.a);
    }
}

