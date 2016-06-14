package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bf implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ CommonPostListActivity b;

    bf(CommonPostListActivity commonPostListActivity, PopupWindow popupWindow) {
        this.b = commonPostListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        CommonPostListActivity.a(this.b, true);
        CommonPostListActivity.i(this.b).setText("\u7cbe\u54c1");
        CommonPostListActivity.a(this.b, "all");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}
