package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.ImageView;

final class aY
        implements View.OnClickListener {
    aY(CommonPostListActivity paramCommonPostListActivity, ImageView paramImageView) {
    }

    public final void onClick(View paramView) {
        CommonPostListActivity.a(this.b, 0).showAsDropDown(paramView, 0, 1);
        this.a.setImageDrawable(this.b.getResources().getDrawable(2130837722));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aY
 * JD-Core Version:    0.6.2
 */