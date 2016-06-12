package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.view.View$OnClickListener;

final class h implements View$OnClickListener {

    private FeedSettingActivity a;

    h(FeedSettingActivity FeedSettingActivity1) {
        a = FeedSettingActivity1;
    }

    public final void onClick(View View1) {
        FeedSettingActivity.a(a, FeedSettingActivity.a(a));
    }
}
