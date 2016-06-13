package com.clilystudio.netbook.ui.feed;

import android.content.Intent;
import android.view.View;

final class d
        implements View.OnClickListener {
    private /* synthetic */ FeedIntroActivity a;

    d(FeedIntroActivity feedIntroActivity) {
        this.a = feedIntroActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, FeedListActivity.class);
        this.a.startActivity(intent);
        this.a.finish();
    }
}
