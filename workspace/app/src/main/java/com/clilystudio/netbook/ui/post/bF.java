package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bF implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ GirlTopicListActivity b;

    bF(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
        this.b = girlTopicListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GirlTopicListActivity.k(this.b).setText("\u5168\u90e8");
        GirlTopicListActivity.b(this.b, false);
        GirlTopicListActivity.a(this.b, "all");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}
