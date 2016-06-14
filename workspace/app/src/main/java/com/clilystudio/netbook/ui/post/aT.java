package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aT implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ CommonPostListActivity b;

    aT(CommonPostListActivity commonPostListActivity, PopupWindow popupWindow) {
        this.b = commonPostListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("\u9ed8\u8ba4\u6392\u5e8f");
        CommonPostListActivity.b(this.b, "updated");
        CommonPostListActivity.j(this.b).setVisibility(View.VISIBLE);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}
