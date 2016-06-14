package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.util.e;

final class dI extends com.clilystudio.netbook.a_pack.e<String, Void, HotTweetResult> {
    private /* synthetic */ TweetHotFragment a;

    private dI(TweetHotFragment tweetHotFragment) {
        this.a = tweetHotFragment;
    }

    /* synthetic */ dI(TweetHotFragment tweetHotFragment, byte by) {
        this(tweetHotFragment);
    }

    private static /* varargs */ HotTweetResult a() {
        try {
            b.a();
            HotTweetResult hotTweetResult = b.b().j(null);
            return hotTweetResult;
        } catch (Exception var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HotTweetResult hotTweetResult = (HotTweetResult) object;
        super.onPostExecute(hotTweetResult);
        if (this.a.getActivity() == null) return;
        TweetHotFragment.d(this.a);
        if (hotTweetResult != null && hotTweetResult.isOk()) {
            TweetHotFragment.e(this.a).clear();
            int n = hotTweetResult.getTweets().length;
            if (n > 0) {
                TweetHotFragment.a(this.a, hotTweetResult);
                TweetHotFragment.b(this.a, hotTweetResult);
                if (n < 10) {
                    TweetHotFragment.f(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                TweetHotFragment.f(this.a).setOnLastItemVisibleListener(TweetHotFragment.g(this.a));
                return;
            }
            TweetHotFragment.h(this.a);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
