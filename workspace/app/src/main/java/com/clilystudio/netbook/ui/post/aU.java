package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class aU implements View$OnClickListener {

    private PopupWindow a;
    private CommonPostListActivity b;
    aU(CommonPostListActivity CommonPostListActivity1, PopupWindow PopupWindow2) {
        b = CommonPostListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        CommonPostListActivity.k(b).setText((CharSequence) "\u6700\u65B0\u53D1\u5E03");
        CommonPostListActivity.b(b, "created");
        CommonPostListActivity.j(b).setVisibility(0);
        CommonPostListActivity.j(b).setRefreshing();
    }
}
