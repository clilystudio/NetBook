package com.clilystudio.netbook.util;

import android.view.View;

final class u implements View.OnClickListener {
    private /* synthetic */ FeedIntroDialog a;

    u(FeedIntroDialog feedIntroDialog) {
        this.a = feedIntroDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
    }
}
