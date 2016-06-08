package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class ah extends e<String, Void, BookReview[]> {
    private ah(BestReviewsFragment paramBestReviewsFragment) {
    }

    private static BookReview[] a(String[] paramArrayOfString) {
        try {
            b.a();
            BookReviewRoot localBookReviewRoot = b.b().C(paramArrayOfString[0]);
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

