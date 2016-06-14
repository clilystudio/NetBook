package com.clilystudio.netbook.ui.post;

import android.view.View;

final class T implements View.OnClickListener {
    private /* synthetic */ AddVoteItemActivity a;

    T(AddVoteItemActivity addVoteItemActivity) {
        this.a = addVoteItemActivity;
    }

    @Override
    public final void onClick(View view) {
        int n = (Integer) view.getTag();
        AddVoteItemActivity.a(this.a, n);
    }
}
