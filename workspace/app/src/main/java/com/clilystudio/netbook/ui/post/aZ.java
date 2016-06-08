package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.ImageView;

final class aZ
        implements View.OnClickListener {
    aZ(CommonPostListActivity paramCommonPostListActivity, ImageView paramImageView) {
    }

    public final void onClick(View paramView) {
        CommonPostListActivity.a(this.b, 1).showAsDropDown(paramView, 0, 1);
        this.a.setImageDrawable(this.b.getResources().getDrawable(2130837722));
    }
}

