package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dh
        implements View.OnClickListener {
    private /* synthetic */ ReviewListActivity a;

    dh(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void onClick(View view) {
        ReviewListActivity.a(this.a, 2).showAsDropDown(view, 0, 1);
        ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}
