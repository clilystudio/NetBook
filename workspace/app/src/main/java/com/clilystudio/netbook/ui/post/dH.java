package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.util.e;

final class dH extends com.clilystudio.netbook.a_pack.e<String, Void, HotTweetResult> {
    private /* synthetic */ TweetHotFragment a;

    private dH(TweetHotFragment tweetHotFragment) {
        this.a = tweetHotFragment;
    }

    /* synthetic */ dH(TweetHotFragment tweetHotFragment, byte by) {
        this(tweetHotFragment);
    }

    private static /* varargs */ HotTweetResult a(String... arrstring) {
        try {
            b.a();
            HotTweetResult hotTweetResult = b.b().j(arrstring[0]);
            return hotTweetResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return dH.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HotTweetResult hotTweetResult = (HotTweetResult) object;
        super.onPostExecute(hotTweetResult);
        if (this.a.getActivity() == null) return;
        {
            TweetHotFragment.d(this.a);
            if (hotTweetResult != null && hotTweetResult.isOk()) {
                TimelineResult$Temp[] arrtimelineResult$Temp = hotTweetResult.getTweets();
                int n = arrtimelineResult$Temp.length;
                if (n > 0) {
                    for (TimelineResult$Temp timelineResult$Temp : arrtimelineResult$Temp) {
                        timelineResult$Temp.getTweet().setUser(timelineResult$Temp.getUser());
                        TweetHotFragment.e(this.a).add(timelineResult$Temp.getTweet());
                    }
                    TweetHotFragment.i(this.a).a(TweetHotFragment.e(this.a));
                    if (n >= 10) {
                        TweetHotFragment.f(this.a).setOnLastItemVisibleListener(TweetHotFragment.g(this.a));
                        return;
                    }
                    TweetHotFragment.f(this.a).setOnLastItemVisibleListener(null);
                    return;
                } else {
                    if (TweetHotFragment.e(this.a).size() != 0) return;
                    {
                        TweetHotFragment.h(this.a);
                        return;
                    }
                }
            }
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
