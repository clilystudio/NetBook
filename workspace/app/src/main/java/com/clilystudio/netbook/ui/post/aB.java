package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookReview;

final class aB
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookReviewListFragment a;

    aB(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        BookReview bookReview;
        int n2 = n - this.a.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < BookReviewListFragment.d(this.a).size() && (bookReview = (BookReview) BookReviewListFragment.d(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a.getActivity(), ReviewActivity.class);
            intent.putExtra("extraReviewId", bookReview._id);
            this.a.startActivity(intent);
        }
    }
}
