package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class ah
        extends e<String, Void, BookReview[]> {
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
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return ah.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        int n = 2;
        BookReview[] arrbookReview = (BookReview[]) object;
        super.onPostExecute(arrbookReview);
        if (this.a.getActivity() == null || arrbookReview == null) {
            return;
        }
        View view = BestReviewsFragment.a(this.a).findViewById(2131493430);
        view.setVisibility(0);
        int n2 = arrbookReview.length;
        if (n2 == 0) {
            view.findViewById(2131493431).setVisibility(8);
            view.findViewById(2131493433).setVisibility(0);
            BestReviewsFragment.b(this.a);
            return;
        }
        view.findViewById(2131493431).setVisibility(0);
        view.findViewById(2131493433).setVisibility(8);
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
