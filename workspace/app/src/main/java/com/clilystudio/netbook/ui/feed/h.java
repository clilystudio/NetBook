package com.clilystudio.netbook.ui.feed;

import android.view.View;

final class h
        implements View.OnClickListener {
    private /* synthetic */ FeedSettingActivity a;

    h(FeedSettingActivity feedSettingActivity) {
        this.a = feedSettingActivity;
    }

    @Override
    public final void onClick(View view) {
        FeedSettingActivity.a(this.a, FeedSettingActivity.a(this.a));
    }
}
