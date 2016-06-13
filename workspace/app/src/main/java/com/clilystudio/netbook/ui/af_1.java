package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.post.AddReviewRatingActivity;

final class af
        implements View.OnClickListener {
    private /* synthetic */ BestReviewsFragment a;

    af(BestReviewsFragment bestReviewsFragment) {
        this.a = bestReviewsFragment;
    }

    @Override
    public final void onClick(View view) {
        String string = this.a.getArguments().getString("args_book_id");
        Intent intent = new Intent(this.a.getActivity(), AddReviewRatingActivity.class);
        intent.putExtra("bookReviewBookId", string);
        this.a.startActivity(intent);
    }
}
