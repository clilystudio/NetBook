package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class bX extends com.clilystudio.netbook.a.e {

    private MyTweetFragment a;

    bX(MyTweetFragment MyTweetFragment1, byte byte2) {
        this(MyTweetFragment1);
    }

    private bX(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    private static transient TweetsResult a() {
        TweetsResult TweetsResult3;

        try {
            com.clilystudio.netbook.api.b.a();
            TweetsResult3 = com.clilystudio.netbook.api.b.b().k(null);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return TweetsResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TweetsResult) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            MyTweetFragment.p(a);
            if (Object2 != null && ((TweetsResult) Object2).getTweets() != null) {
                int int3;

                MyTweetFragment.q(a).clear();
                int3 = ((TweetsResult) Object2).getTweets().length;
                if (int3 > 0) {
                    MyTweetFragment.a(a, (TweetsResult) Object2);
                    MyTweetFragment.b(a, (TweetsResult) Object2);
                    if (int3 < 20)
                        MyTweetFragment.r(a).setOnLastItemVisibleListener(null);
                    else {
                        MyTweetFragment.r(a).setOnLastItemVisibleListener(MyTweetFragment.s(a));
                        return;
                    }
                } else {
                    MyTweetFragment.t(a);
                    return;
                }
            } else {
                if (Object2 != null && "TOKEN_INVALID".equals(((TweetsResult) Object2).getCode())) {
                    a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034529);
                } else
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
                return;
            }
        }
    }
}
