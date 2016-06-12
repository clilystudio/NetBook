package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class bF implements View$OnClickListener {

    private PopupWindow a;
    private GirlTopicListActivity b;
    bF(GirlTopicListActivity GirlTopicListActivity1, PopupWindow PopupWindow2) {
        b = GirlTopicListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        GirlTopicListActivity.k(b).setText((CharSequence) "\u5168\u90E8");
        GirlTopicListActivity.b(b, false);
        GirlTopicListActivity.a(b, "all");
        GirlTopicListActivity.l(b).setRefreshing();
    }
}
