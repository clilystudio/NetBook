package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetResult;

final class cG extends e {

    private ReviewActivity a;

    cG(ReviewActivity ReviewActivity1, byte byte2) {
        this(ReviewActivity1);
    }

    private cG(ReviewActivity ReviewActivity1) {
        a = ReviewActivity1;
    }

    private transient TweetResult a(String[] String_1darray1) {
        TweetResult TweetResult3;

        try {
            TweetResult3 = com.clilystudio.netbook.api.b.b().l(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return TweetResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TweetResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((TweetResult) Object2).getTweet() != null) {
            Tweet Tweet3;

            a.f();
            Tweet3 = ((TweetResult) Object2).getTweet();
            Tweet3.setUser(((TweetResult) Object2).getUser());
            ReviewActivity.a(a, Tweet3);
            ReviewActivity.b(a);
        } else
            a.h();
    }
}
