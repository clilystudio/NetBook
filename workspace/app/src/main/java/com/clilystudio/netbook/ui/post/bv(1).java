package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bv
        implements View.OnClickListener {
    bv(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034432);
        GirlTopicListActivity.b(this.b, "created");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

