package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.ImageView;

final class aZ implements View.OnClickListener {
    private /* synthetic */ ImageView a;
    private /* synthetic */ CommonPostListActivity b;

    aZ(CommonPostListActivity commonPostListActivity, ImageView imageView) {
        this.b = commonPostListActivity;
        this.a = imageView;
    }

    @Override
    public final void onClick(View view) {
        CommonPostListActivity.a(this.b, 1).showAsDropDown(view, 0, 1);
        this.a.setImageDrawable(this.b.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
