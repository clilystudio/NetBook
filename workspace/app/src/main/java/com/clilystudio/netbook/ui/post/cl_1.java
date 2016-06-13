package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.util.e;

final class cl
        extends com.clilystudio.netbook.a.e<String, Void, TweetsResult> {
    private /* synthetic */ OtherUserActivity a;

    private cl(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    /* synthetic */ cl(OtherUserActivity otherUserActivity, byte by) {
        this(otherUserActivity);
    }

    private static /* varargs */ TweetsResult a(String... arrstring) {
        try {
            b.a();
            TweetsResult tweetsResult = b.b().o(arrstring[0], arrstring[1]);
            return tweetsResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return cl.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TweetsResult tweetsResult = (TweetsResult) object;
        super.onPostExecute(tweetsResult);
        OtherUserActivity.u(this.a);
        if (this.isCancelled()) return;
        if (tweetsResult != null && tweetsResult.getTweets() != null) {
            Tweet[] arrtweet = tweetsResult.getTweets();
            int n = arrtweet.length;
            if (n <= 0) return;
            for (Tweet tweet : arrtweet) {
                tweet.setUser(tweetsResult.getUser());
                OtherUserActivity.r(this.a).add(tweet);
            }
            OtherUserActivity.v(this.a).a(OtherUserActivity.r(this.a));
            if (n < 100) {
                OtherUserActivity.w(this.a).setOnLastItemVisibleListener(null);
                return;
            }
            OtherUserActivity.w(this.a).setOnLastItemVisibleListener(OtherUserActivity.x(this.a));
            return;
        }
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
    }
}
