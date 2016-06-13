package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.ImageView;

final class aY
        implements View.OnClickListener {
    private /* synthetic */ ImageView a;
    private /* synthetic */ CommonPostListActivity b;

    aY(CommonPostListActivity commonPostListActivity, ImageView imageView) {
        this.b = commonPostListActivity;
        this.a = imageView;
    }

    @Override
    public final void onClick(View view) {
        CommonPostListActivity.a(this.b, 0).showAsDropDown(view, 0, 1);
        this.a.setImageDrawable(this.b.getResources().getDrawable(2130837722));
    }
}
