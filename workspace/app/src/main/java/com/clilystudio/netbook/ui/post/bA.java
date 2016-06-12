package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class bA implements View$OnClickListener {

    private GirlTopicListActivity a;

    bA(GirlTopicListActivity GirlTopicListActivity1) {
        a = GirlTopicListActivity1;
    }

    public final void onClick(View View1) {
        GirlTopicListActivity.a(a, false).showAsDropDown(View1);
        GirlTopicListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
