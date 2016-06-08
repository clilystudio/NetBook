package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aT
        implements View.OnClickListener {
    aT(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("默认排序");
        CommonPostListActivity.b(this.b, "updated");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}

