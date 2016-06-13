package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;
import com.clilystudio.netbook.util.e;

import java.util.Collection;

final class aH
        extends com.clilystudio.netbook.a.e<String, Void, BookReview[]> {
    private /* synthetic */ BookReviewListFragment a;

    private aH(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    /* synthetic */ aH(BookReviewListFragment bookReviewListFragment, byte by) {
        this(bookReviewListFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ BookReview[] a(String... arrstring) {
        b.a();
        BookReviewRoot bookReviewRoot = b.b().c(arrstring[0], arrstring[1], BookReviewListFragment.d(this.a).size(), 20);
        if (bookReviewRoot == null) return null;
        try {
            if (!bookReviewRoot.ok) return null;
            if (bookReviewRoot.reviews == null) return null;
            return bookReviewRoot.reviews;
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookReview[] arrbookReview = (BookReview[]) object;
        super.onPostExecute(arrbookReview);
        if (this.a.getActivity() == null) return;
        this.a.c();
        if (this.isCancelled()) return;
        if (arrbookReview != null) {
            int n = arrbookReview.length;
            if (n > 0) {
                for (BookReview bookReview : arrbookReview) {
                    BookReviewListFragment.d(this.a).add(bookReview);
                }
                BookReviewListFragment.h(this.a).a((Collection) BookReviewListFragment.d(this.a));
                if (n >= 20) {
                    this.a.a.setOnLastItemVisibleListener(BookReviewListFragment.i(this.a));
                    return;
                }
            }
            this.a.a.setOnLastItemVisibleListener(null);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
    }
}
