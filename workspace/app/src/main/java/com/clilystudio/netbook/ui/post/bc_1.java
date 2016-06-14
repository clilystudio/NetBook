package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.DiscussSummary;

final class bc implements AdapterView.OnItemClickListener {
    private /* synthetic */ CommonPostListActivity a;

    bc(CommonPostListActivity commonPostListActivity) {
        this.a = commonPostListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        DiscussSummary discussSummary;
        int n2 = n - CommonPostListActivity.g(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < CommonPostListActivity.h(this.a).size() && (discussSummary = (DiscussSummary) CommonPostListActivity.h(this.a).get(n2)) != null) {
            Intent intent = PostDetailActivity.a(this.a, discussSummary.get_id(), "ramble");
            this.a.startActivity(intent);
        }
    }
}
