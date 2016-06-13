package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cU
        implements View.OnClickListener {
    private /* synthetic */ ReviewListActivity a;

    cU(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void onClick(View view) {
        ReviewListActivity.a(this.a, 0).showAsDropDown(view, 0, 1);
        ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}
