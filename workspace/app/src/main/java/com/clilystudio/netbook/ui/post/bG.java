package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bG
        implements View.OnClickListener {
    bG(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.b(this.b, true);
        GirlTopicListActivity.k(this.b).setText("精品");
        GirlTopicListActivity.a(this.b, "all");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

