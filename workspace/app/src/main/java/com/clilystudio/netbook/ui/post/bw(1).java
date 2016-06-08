package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bw
        implements View.OnClickListener {
    bw(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034434);
        GirlTopicListActivity.b(this.b, "comment-count");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

