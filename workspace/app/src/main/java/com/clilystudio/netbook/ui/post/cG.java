package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetResult;

final class cG extends e<String, Void, TweetResult> {
    private /* synthetic */ ReviewActivity a;

    private cG(ReviewActivity reviewActivity) {
        this.a = reviewActivity;
    }

    /* synthetic */ cG(ReviewActivity reviewActivity, byte by) {
        this(reviewActivity);
    }

    private /* varargs */ TweetResult a(String... arrstring) {
        try {
            TweetResult tweetResult = b.b().l(arrstring[0]);
            return tweetResult;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TweetResult tweetResult = (TweetResult) object;
        super.onPostExecute(tweetResult);
        if (tweetResult != null && tweetResult.getTweet() != null) {
            this.a.f();
            Tweet tweet = tweetResult.getTweet();
            tweet.setUser(tweetResult.getUser());
            ReviewActivity.a(this.a, tweet);
            ReviewActivity.b(this.a);
            return;
        }
        this.a.h();
    }
}
