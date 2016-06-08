package com.clilystudio.netbook.ui.feed;

import android.content.Intent;
import android.view.View;

final class d
        implements View.OnClickListener {
    d(FeedIntroActivity paramFeedIntroActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, FeedListActivity.class);
        this.a.startActivity(localIntent);
        this.a.finish();
    }
}

