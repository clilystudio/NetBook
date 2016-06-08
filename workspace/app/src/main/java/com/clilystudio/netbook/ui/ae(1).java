package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.post.BookPostTabActivity;

final class ae
        implements View.OnClickListener {
    ae(BestReviewsFragment paramBestReviewsFragment) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = BookPostTabActivity.a(this.a.getActivity(), this.a.getArguments().getString("args_book_id"), this.a.getArguments().getString("args_book_title"));
        localIntent.putExtra("extra_tab_default_index", 1);
        this.a.startActivity(localIntent);
    }
}

