package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.ui.post.ReviewActivity;

final class ag implements View.OnClickListener {
    private /* synthetic */ BookReview a;
    private /* synthetic */ BestReviewsFragment b;

    ag(BestReviewsFragment bestReviewsFragment, BookReview bookReview) {
        this.b = bestReviewsFragment;
        this.a = bookReview;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.b.getActivity(), ReviewActivity.class);
        intent.putExtra("extraReviewId", this.a._id);
        this.b.startActivity(intent);
    }
}
