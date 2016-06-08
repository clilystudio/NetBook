package com.clilystudio.netbook.ui.post;

import android.view.View;

final class S
        implements View.OnClickListener {
    S(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(View paramView) {
        int i = ((Integer) paramView.getTag()).intValue();
        AddVoteItemActivity.a(this.a, AddVoteItemActivity.d(this.a)[i], i);
    }
}

