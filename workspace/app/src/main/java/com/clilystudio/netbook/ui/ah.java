package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class ah extends e<String, Void, BookReview[]> {
    private /* synthetic */ BestReviewsFragment a;

    private ah(BestReviewsFragment bestReviewsFragment) {
        this.a = bestReviewsFragment;
    }

    /* synthetic */ ah(BestReviewsFragment bestReviewsFragment, byte by) {
        this(bestReviewsFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static /* varargs */ BookReview[] a(String... arrstring) {
        b.a();
        BookReviewRoot bookReviewRoot = b.b().C(arrstring[0]);
        if (bookReviewRoot == null) return null;
        try {
            if (!bookReviewRoot.ok) return null;
            if (bookReviewRoot.reviews == null) return null;
            return bookReviewRoot.reviews;
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ BookReview[] doInBackground(String[] arrobject) {
        return ah.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(BookReview[] object) {
        int n = 2;
        BookReview[] arrbookReview = (BookReview[]) object;
        super.onPostExecute(arrbookReview);
        if (this.a.getActivity() == null || arrbookReview == null) {
            return;
        }
        View view = BestReviewsFragment.a(this.a).findViewById(R.id.best_reviews_root);
        view.setVisibility(View.VISIBLE);
        int n2 = arrbookReview.length;
        if (n2 == 0) {
            view.findViewById(R.id.best_reviews_top).setVisibility(View.GONE);
            view.findViewById(R.id.best_reviews_top_empty).setVisibility(View.VISIBLE);
            BestReviewsFragment.b(this.a);
            return;
        }
        view.findViewById(R.id.best_reviews_top).setVisibility(View.VISIBLE);
        view.findViewById(R.id.best_reviews_top_empty).setVisibility(View.GONE);
        BestReviewsFragment.c(this.a);
        if (n2 <= n) {
            n = n2;
        }
        int n3 = 0;
        while (n3 < n) {
            BookReview bookReview = arrbookReview[n3];
            if (n3 == 1) {
                BestReviewsFragment.d(this.a);
            }
            BestReviewsFragment.a(this.a, bookReview);
            ++n3;
        }
    }
}