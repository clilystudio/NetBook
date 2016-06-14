package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aV implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ CommonPostListActivity b;

    aV(CommonPostListActivity commonPostListActivity, PopupWindow popupWindow) {
        this.b = commonPostListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("\u6700\u591a\u8bc4\u8bba");
        CommonPostListActivity.b(this.b, "comment-count");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}
