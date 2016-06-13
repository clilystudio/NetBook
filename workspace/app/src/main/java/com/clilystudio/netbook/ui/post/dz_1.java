package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetResult;

final class dz
        extends e<String, Void, TweetResult> {
    private /* synthetic */ TweetDetailActivity a;

    private dz(TweetDetailActivity tweetDetailActivity) {
        this.a = tweetDetailActivity;
    }

    /* synthetic */ dz(TweetDetailActivity tweetDetailActivity, byte by) {
        this(tweetDetailActivity);
    }

    private /* varargs */ TweetResult a() {
        try {
            TweetResult tweetResult = b.b().l(this.a.a);
            return tweetResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TweetResult tweetResult = (TweetResult) object;
        super.onPostExecute(tweetResult);
        if (tweetResult != null && tweetResult.getTweet() != null) {
            TweetDetailActivity.a(this.a, tweetResult);
            TweetDetailActivity.c(this.a).getTweet().setUser(TweetDetailActivity.c(this.a).getUser());
            if (tweetResult.getTweet().isArticle()) {
                TweetDetailActivity.b(this.a, "ARTICLE");
            } else {
                TweetDetailActivity.b(this.a, "TWEET");
            }
            this.a.f();
            TweetDetailActivity.b(this.a, tweetResult);
            TweetDetailActivity.a(this.a, TweetDetailActivity.c(this.a).getTweet().getVotes());
            TweetDetailActivity.g(this.a);
            TweetDetailActivity.h(this.a);
            return;
        }
        this.a.h();
    }
}
