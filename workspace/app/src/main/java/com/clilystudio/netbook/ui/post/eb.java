package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class eb
        extends com.clilystudio.netbook.a.e<String, Void, TimelineResult> {
    private /* synthetic */ TweetTimelineFragment a;

    private eb(TweetTimelineFragment tweetTimelineFragment) {
        this.a = tweetTimelineFragment;
    }

    /* synthetic */ eb(TweetTimelineFragment tweetTimelineFragment, byte by) {
        this(tweetTimelineFragment);
    }

    private static /* varargs */ TimelineResult a(String... arrstring) {
        try {
            b.a();
            TimelineResult timelineResult = b.b().d(arrstring[0], arrstring[1], null);
            return timelineResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return eb.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TimelineResult timelineResult = (TimelineResult) object;
        super.onPostExecute(timelineResult);
        if (this.a.getActivity() == null) return;
        TweetTimelineFragment.d(this.a);
        if (timelineResult != null && timelineResult.isOk()) {
            int n = timelineResult.getTweets().length;
            if (n <= 0) {
                TweetTimelineFragment.g(this.a);
                return;
            }
            TweetTimelineFragment.a(this.a, timelineResult);
            if (n < 100) {
                TweetTimelineFragment.e(this.a).setOnLastItemVisibleListener(null);
            } else {
                TweetTimelineFragment.e(this.a).setOnLastItemVisibleListener(TweetTimelineFragment.f(this.a));
            }
            TweetTimelineFragment.b(this.a, timelineResult);
            return;
        }
        if (timelineResult != null && "TOKEN_INVALID".equals(timelineResult.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), (String) this.a.getString(2131034547));
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
