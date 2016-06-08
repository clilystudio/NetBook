package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bF
        implements View.OnClickListener {
    bF(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.k(this.b).setText("全部");
        GirlTopicListActivity.b(this.b, false);
        GirlTopicListActivity.a(this.b, "all");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

