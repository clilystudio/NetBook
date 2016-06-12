package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.ReviewResult;

final class cE extends e {

    private ReviewActivity a;

    cE(ReviewActivity ReviewActivity1, byte byte2) {
        this(ReviewActivity1);
    }

    private cE(ReviewActivity ReviewActivity1) {
        a = ReviewActivity1;
    }

    private transient ReviewResult a(String[] String_1darray1) {
        ReviewResult ReviewResult3;

        try {
            ReviewResult3 = com.clilystudio.netbook.api.b.b().D(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return ReviewResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ReviewResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((ReviewResult) Object2).getReview() != null) {
            a.f();
            ReviewActivity.a(a, ((ReviewResult) Object2).getReview());
            ReviewActivity.b(a, ReviewActivity.h(a));
            ReviewActivity.b(a);
        } else
            a.h();
    }
}
