package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aV
        implements View.OnClickListener {
    aV(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("最多评论");
        CommonPostListActivity.b(this.b, "comment-count");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}

