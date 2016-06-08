package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.ui.post.ReviewActivity;

final class ag
        implements View.OnClickListener {
    ag(BestReviewsFragment paramBestReviewsFragment, BookReview paramBookReview) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.b.getActivity(), ReviewActivity.class);
        localIntent.putExtra("extraReviewId", this.a._id);
        this.b.startActivity(localIntent);
    }
}

