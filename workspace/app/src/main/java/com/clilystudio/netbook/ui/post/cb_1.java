package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cb
        implements View.OnClickListener {
    private /* synthetic */ OtherUserActivity a;

    cb(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void onClick(View view) {
        OtherUserActivity.d(this.a);
    }
}
