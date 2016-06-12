package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class bW extends com.clilystudio.netbook.a.e {

    private MyTweetFragment a;

    bW(MyTweetFragment MyTweetFragment1, byte byte2) {
        this(MyTweetFragment1);
    }

    private bW(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    private static transient TweetsResult a(String[] String_1darray1) {
        TweetsResult TweetsResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            TweetsResult4 = com.clilystudio.netbook.api.b.b().k(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return TweetsResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TweetsResult) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            MyTweetFragment.p(a);
            if (!isCancelled()) {
                if (Object2 != null && ((TweetsResult) Object2).getTweets() != null) {
                    Object[] Object_1darray3 = ((TweetsResult) Object2).getTweets();
                    int int4 = Object_1darray3.length;

                    if (int4 > 0) {
                        int int5 = Object_1darray3.length;
                        int int6;

                        for (int6 = 0; int6 < int5; ++int6) {
                            Object Object7 = Object_1darray3[int6];

                            ((Tweet) Object7).setUser(((TweetsResult) Object2).getUser());
                            MyTweetFragment.q(a).add(Object7);
                        }
                        MyTweetFragment.u(a).a(MyTweetFragment.q(a));
                        if (int4 >= 20) {
                            MyTweetFragment.r(a).setOnLastItemVisibleListener(MyTweetFragment.s(a));
                            return;
                        }
                    }
                    MyTweetFragment.r(a).setOnLastItemVisibleListener(null);
                } else if (Object2 != null && "TOKEN_INVALID".equals(((TweetsResult) Object2).getCode())) {
                    a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034529);
                } else
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u91CD\u8BD5");
                return;
            }
        }
    }
}
