package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.ReviewSummary;

final class dk
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ ReviewListActivity a;

    dk(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        ReviewSummary reviewSummary;
        int n2 = n - ReviewListActivity.k(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < ReviewListActivity.l(this.a).size() && (reviewSummary = (ReviewSummary) ReviewListActivity.l(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a, ReviewActivity.class);
            intent.putExtra("extraReviewId", reviewSummary.get_id());
            this.a.startActivity(intent);
        }
    }
}
