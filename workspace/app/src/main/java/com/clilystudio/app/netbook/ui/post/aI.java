package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookReview;
import com.clilystudio.app.netbook.model.BookReviewRoot;

final class aI extends e<String, Void, BookReview[]> {
    private aI(BookReviewListFragment paramBookReviewListFragment) {
    }

    private static BookReview[] a(String[] paramArrayOfString) {
        try {
            b.a();
            BookReviewRoot localBookReviewRoot = b.b().c(paramArrayOfString[0], paramArrayOfString[1], 0, 20);
            if ((localBookReviewRoot != null) && (localBookReviewRoot.ok) && (localBookReviewRoot.reviews != null)) {
                BookReview[] arrayOfBookReview = localBookReviewRoot.reviews;
                return arrayOfBookReview;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aI
 * JD-Core Version:    0.6.2
 */