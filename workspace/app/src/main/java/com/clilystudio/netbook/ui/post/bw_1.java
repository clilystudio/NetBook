package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bw
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ GirlTopicListActivity b;

    bw(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
        this.b = girlTopicListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034434);
        GirlTopicListActivity.b(this.b, "comment-count");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}
