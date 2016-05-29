package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.ui.post.AddReviewRatingActivity;

final class af
        implements View.OnClickListener {
    af(BestReviewsFragment paramBestReviewsFragment) {
    }

    public final void onClick(View paramView) {
        String str = this.a.getArguments().getString("args_book_id");
        Intent localIntent = new Intent(this.a.getActivity(), AddReviewRatingActivity.class);
        localIntent.putExtra("bookReviewBookId", str);
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.af
 * JD-Core Version:    0.6.2
 */