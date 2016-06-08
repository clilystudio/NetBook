package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookReview;

final class aB
        implements AdapterView.OnItemClickListener {
    aB(BookReviewListFragment paramBookReviewListFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - this.a.b.getHeaderViewsCount();
        if ((i >= 0) && (i < BookReviewListFragment.d(this.a).size())) {
            BookReview localBookReview = (BookReview) BookReviewListFragment.d(this.a).get(i);
            if (localBookReview != null) {
                Intent localIntent = new Intent(this.a.getActivity(), ReviewActivity.class);
                localIntent.putExtra("extraReviewId", localBookReview._id);
                this.a.startActivity(localIntent);
            }
        }
    }
}

