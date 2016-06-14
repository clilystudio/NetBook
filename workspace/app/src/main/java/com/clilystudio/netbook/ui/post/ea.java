package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class ea
        extends com.clilystudio.netbook.a_pack.e<String, Void, TimelineResult> {
    private /* synthetic */ TweetTimelineFragment a;

    private ea(TweetTimelineFragment tweetTimelineFragment) {
        this.a = tweetTimelineFragment;
    }

    /* synthetic */ ea(TweetTimelineFragment tweetTimelineFragment, byte by) {
        this(tweetTimelineFragment);
    }

    private static /* varargs */ TimelineResult a(String... arrstring) {
        try {
            b.a();
            TimelineResult timelineResult = b.b().d(arrstring[0], arrstring[1], arrstring[2]);
            return timelineResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return ea.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TimelineResult timelineResult = (TimelineResult) object;
        super.onPostExecute(timelineResult);
        if (this.a.getActivity() == null) return;
        {
            TweetTimelineFragment.d(this.a);
            if (timelineResult != null && timelineResult.isOk()) {
                TimelineResult$Temp[] arrtimelineResult$Temp = timelineResult.getTweets();
                int n = arrtimelineResult$Temp.length;
                if (n > 0) {
                    for (TimelineResult$Temp timelineResult$Temp : arrtimelineResult$Temp) {
                        timelineResult$Temp.getTweet().setUser(timelineResult$Temp.getUser());
                    }
                    TweetTimelineFragment.a(this.a, TweetTimelineFragment.h(this.a), timelineResult);
                    TweetTimelineFragment.i(this.a).a(TweetTimelineFragment.h(this.a));
                    if (n < 100) {
                        TweetTimelineFragment.e(this.a).setOnLastItemVisibleListener(null);
                    } else {
                        TweetTimelineFragment.e(this.a).setOnLastItemVisibleListener(TweetTimelineFragment.f(this.a));
                    }
                    TweetTimelineFragment.c(this.a, timelineResult);
                    return;
                } else {
                    if (TweetTimelineFragment.h(this.a).size() != 0) return;
                    {
                        TweetTimelineFragment.g(this.a);
                        return;
                    }
                }
            }
        }
        if (timelineResult != null && "TOKEN_INVALID".equals(timelineResult.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), (int) 2131034529);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
