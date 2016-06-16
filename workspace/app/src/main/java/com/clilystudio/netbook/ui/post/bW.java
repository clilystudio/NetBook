package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class bW extends com.clilystudio.netbook.a_pack.e<String, Void, TweetsResult> {
    private /* synthetic */ MyTweetFragment a;

    private bW(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    /* synthetic */ bW(MyTweetFragment myTweetFragment, byte by) {
        this(myTweetFragment);
    }

    private static /* varargs */ TweetsResult a(String... arrstring) {
        try {
            b.a();
            TweetsResult tweetsResult = b.b().k(arrstring[0]);
            return tweetsResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bW.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TweetsResult tweetsResult = (TweetsResult) object;
        super.onPostExecute(tweetsResult);
        if (this.a.getActivity() == null) return;
        MyTweetFragment.p(this.a);
        if (this.isCancelled()) return;
        if (tweetsResult != null && tweetsResult.getTweets() != null) {
            Tweet[] arrtweet = tweetsResult.getTweets();
            int n = arrtweet.length;
            if (n > 0) {
                for (Tweet tweet : arrtweet) {
                    tweet.setUser(tweetsResult.getUser());
                    MyTweetFragment.q(this.a).add(tweet);
                }
                MyTweetFragment.u(this.a).a(MyTweetFragment.q(this.a));
                if (n >= 20) {
                    MyTweetFragment.r(this.a).setOnLastItemVisibleListener(MyTweetFragment.s(this.a));
                    return;
                }
            }
            MyTweetFragment.r(this.a).setOnLastItemVisibleListener(null);
            return;
        }
        if (tweetsResult != null && "TOKEN_INVALID".equals(tweetsResult.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), (int) R.string.token_invalid);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
    }
}
