package com.clilystudio.app.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.DiscussSummary;

final class bc
        implements AdapterView.OnItemClickListener {
    bc(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - CommonPostListActivity.g(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < CommonPostListActivity.h(this.a).size())) {
            DiscussSummary localDiscussSummary = (DiscussSummary) CommonPostListActivity.h(this.a).get(i);
            if (localDiscussSummary != null) {
                Intent localIntent = PostDetailActivity.a(this.a, localDiscussSummary.get_id(), "ramble");
                this.a.startActivity(localIntent);
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bc
 * JD-Core Version:    0.6.2
 */