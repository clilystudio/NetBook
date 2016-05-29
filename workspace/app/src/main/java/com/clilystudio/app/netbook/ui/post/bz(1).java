package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class bz
        implements View.OnClickListener {
    bz(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void onClick(View paramView) {
        GirlTopicListActivity.a(this.a, true).showAsDropDown(paramView);
        GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bz
 * JD-Core Version:    0.6.2
 */