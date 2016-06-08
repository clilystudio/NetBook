package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class be
        implements View.OnClickListener {
    be(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        CommonPostListActivity.a(this.b, false);
        CommonPostListActivity.i(this.b).setText("全部");
        CommonPostListActivity.a(this.b, "all");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}

