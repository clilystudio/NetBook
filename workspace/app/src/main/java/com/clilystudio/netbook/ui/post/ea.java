package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class ea extends com.clilystudio.netbook.a.e {

    private TweetTimelineFragment a;

    ea(TweetTimelineFragment TweetTimelineFragment1, byte byte2) {
        this(TweetTimelineFragment1);
    }

    private ea(TweetTimelineFragment TweetTimelineFragment1) {
        a = TweetTimelineFragment1;
    }

    private static transient TimelineResult a(String[] String_1darray1) {
        TimelineResult TimelineResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            TimelineResult4 = com.clilystudio.netbook.api.b.b().d(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return TimelineResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TimelineResult) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            TweetTimelineFragment.d(a);
            if (Object2 != null && ((TimelineResult) Object2).isOk()) {
                TimelineResult$Temp[] Temp_1darray3 = ((TimelineResult) Object2).getTweets();
                int int4 = Temp_1darray3.length;

                if (int4 > 0) {
                    int int5 = Temp_1darray3.length;
                    int int6;

                    for (int6 = 0; int6 < int5; ++int6) {
                        TimelineResult$Temp Temp8 = Temp_1darray3[int6];

                        Temp8.getTweet().setUser(Temp8.getUser());
                    }
                    TweetTimelineFragment.a(a, TweetTimelineFragment.h(a), (TimelineResult) Object2);
                    TweetTimelineFragment.i(a).a(TweetTimelineFragment.h(a));
                    if (int4 < 100)
                        TweetTimelineFragment.e(a).setOnLastItemVisibleListener(null);
                    else
                        TweetTimelineFragment.e(a).setOnLastItemVisibleListener(TweetTimelineFragment.f(a));
                    TweetTimelineFragment.c(a, (TimelineResult) Object2);
                } else if (TweetTimelineFragment.h(a).size() == 0) {
                    TweetTimelineFragment.g(a);
                    return;
                }
            } else {
                if (Object2 != null && "TOKEN_INVALID".equals(((TimelineResult) Object2).getCode())) {
                    a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034529);
                } else
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
                return;
            }
        }
    }
}
