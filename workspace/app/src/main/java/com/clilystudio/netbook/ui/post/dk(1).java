package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.ReviewSummary;

final class dk
        implements AdapterView.OnItemClickListener {
    dk(ReviewListActivity paramReviewListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - ReviewListActivity.k(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < ReviewListActivity.l(this.a).size())) {
            ReviewSummary localReviewSummary = (ReviewSummary) ReviewListActivity.l(this.a).get(i);
            if (localReviewSummary != null) {
                Intent localIntent = new Intent(this.a, ReviewActivity.class);
                localIntent.putExtra("extraReviewId", localReviewSummary.get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}
