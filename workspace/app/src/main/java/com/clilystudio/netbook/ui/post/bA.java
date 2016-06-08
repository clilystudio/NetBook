package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bA
        implements View.OnClickListener {
    bA(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void onClick(View paramView) {
        GirlTopicListActivity.a(this.a, false).showAsDropDown(paramView);
        GirlTopicListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

