package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class cb implements View$OnClickListener {

    private OtherUserActivity a;

    cb(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    public final void onClick(View View1) {
        OtherUserActivity.d(a);
    }
}
