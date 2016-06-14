package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class bX extends com.clilystudio.netbook.a_pack.e<String, Void, TweetsResult> {
    private /* synthetic */ MyTweetFragment a;

    private bX(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    /* synthetic */ bX(MyTweetFragment myTweetFragment, byte by) {
        this(myTweetFragment);
    }

    private static /* varargs */ TweetsResult a() {
        try {
            b.a();
            TweetsResult tweetsResult = b.b().k(null);
            return tweetsResult;
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
        TweetsResult tweetsResult = (TweetsResult) object;
        super.onPostExecute(tweetsResult);
        if (this.a.getActivity() == null) return;
        MyTweetFragment.p(this.a);
        if (tweetsResult != null && tweetsResult.getTweets() != null) {
            MyTweetFragment.q(this.a).clear();
            int n = tweetsResult.getTweets().length;
            if (n > 0) {
                MyTweetFragment.a(this.a, tweetsResult);
                MyTweetFragment.b(this.a, tweetsResult);
                if (n < 20) {
                    MyTweetFragment.r(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                MyTweetFragment.r(this.a).setOnLastItemVisibleListener(MyTweetFragment.s(this.a));
                return;
            }
            MyTweetFragment.t(this.a);
            return;
        }
        if (tweetsResult != null && "TOKEN_INVALID".equals(tweetsResult.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), (int) 2131034529);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
