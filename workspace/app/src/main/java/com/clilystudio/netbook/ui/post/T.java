package com.clilystudio.netbook.ui.post;

import android.view.View;

final class T
        implements View.OnClickListener {
    T(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(View paramView) {
        int i = ((Integer) paramView.getTag()).intValue();
        AddVoteItemActivity.a(this.a, i);
    }
}

