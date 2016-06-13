package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aU
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ CommonPostListActivity b;

    aU(CommonPostListActivity commonPostListActivity, PopupWindow popupWindow) {
        this.b = commonPostListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("\u6700\u65b0\u53d1\u5e03");
        CommonPostListActivity.b(this.b, "created");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}
