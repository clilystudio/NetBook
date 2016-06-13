package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.post.BookPostTabActivity;

final class ae
        implements View.OnClickListener {
    private /* synthetic */ BestReviewsFragment a;

    ae(BestReviewsFragment bestReviewsFragment) {
        this.a = bestReviewsFragment;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = BookPostTabActivity.a(this.a.getActivity(), this.a.getArguments().getString("args_book_id"), this.a.getArguments().getString("args_book_title"));
        intent.putExtra("extra_tab_default_index", 1);
        this.a.startActivity(intent);
    }
}
