package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class bG implements View$OnClickListener {

    private PopupWindow a;
    private GirlTopicListActivity b;
    bG(GirlTopicListActivity GirlTopicListActivity1, PopupWindow PopupWindow2) {
        b = GirlTopicListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        GirlTopicListActivity.b(b, true);
        GirlTopicListActivity.k(b).setText((CharSequence) "\u7CBE\u54C1");
        GirlTopicListActivity.a(b, "all");
        GirlTopicListActivity.l(b).setRefreshing();
    }
}
