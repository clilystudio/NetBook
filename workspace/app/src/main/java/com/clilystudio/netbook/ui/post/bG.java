package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bG
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ GirlTopicListActivity b;

    bG(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
        this.b = girlTopicListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GirlTopicListActivity.b(this.b, true);
        GirlTopicListActivity.k(this.b).setText("\u7cbe\u54c1");
        GirlTopicListActivity.a(this.b, "all");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}
