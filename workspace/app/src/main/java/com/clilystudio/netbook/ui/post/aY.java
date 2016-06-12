package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;

final class aY implements View$OnClickListener {

    private ImageView a;
    private CommonPostListActivity b;
    aY(CommonPostListActivity CommonPostListActivity1, ImageView ImageView2) {
        b = CommonPostListActivity1;
        a = ImageView2;
    }

    public final void onClick(View View1) {
        CommonPostListActivity.a(b, 0).showAsDropDown(View1, 0, 1);
        a.setImageDrawable(b.getResources().getDrawable(2130837722));
    }
}
