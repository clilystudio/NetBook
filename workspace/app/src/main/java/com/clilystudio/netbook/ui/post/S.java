package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class S implements View$OnClickListener {

    private AddVoteItemActivity a;

    S(AddVoteItemActivity AddVoteItemActivity1) {
        a = AddVoteItemActivity1;
    }

    public final void onClick(View View1) {
        int int2 = ((Integer) View1.getTag()).intValue();

        AddVoteItemActivity.a(a, AddVoteItemActivity.d(a)[int2], int2);
    }
}
