package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class bw implements View$OnClickListener {

    private PopupWindow a;
    private GirlTopicListActivity b;
    bw(GirlTopicListActivity GirlTopicListActivity1, PopupWindow PopupWindow2) {
        b = GirlTopicListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        GirlTopicListActivity.m(b).setText(2131034434);
        GirlTopicListActivity.b(b, "comment-count");
        GirlTopicListActivity.l(b).setRefreshing();
    }
}
