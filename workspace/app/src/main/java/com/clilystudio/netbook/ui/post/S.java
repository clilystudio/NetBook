package com.clilystudio.netbook.ui.post;

import android.view.View;

final class S implements View.OnClickListener {
    private /* synthetic */ AddVoteItemActivity a;

    S(AddVoteItemActivity addVoteItemActivity) {
        this.a = addVoteItemActivity;
    }

    @Override
    public final void onClick(View view) {
        int n = (Integer) view.getTag();
        AddVoteItemActivity.a(this.a, AddVoteItemActivity.d(this.a)[n], n);
    }
}
