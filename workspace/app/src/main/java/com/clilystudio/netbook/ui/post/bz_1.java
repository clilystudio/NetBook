package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class bz implements View$OnClickListener {

    private GirlTopicListActivity a;

    bz(GirlTopicListActivity GirlTopicListActivity1) {
        a = GirlTopicListActivity1;
    }

    public final void onClick(View View1) {
        GirlTopicListActivity.a(a, true).showAsDropDown(View1);
        GirlTopicListActivity.b(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
