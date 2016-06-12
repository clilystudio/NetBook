package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

import com.clilystudio.netbook.model.Tweet;

final class bT implements j {

    private MyTweetFragment a;

    bT(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void a() {
        if (MyTweetFragment.b(a) == null || MyTweetFragment.b(a).getStatus() == AsyncTask$Status.FINISHED) {
            int int2;
            String String3;

            MyTweetFragment.v(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) MyTweetFragment.w(a)))
                MyTweetFragment.w(a).cancel(true);
            MyTweetFragment.a(a, new bW(a, (byte) 0));
            int2 = MyTweetFragment.q(a).size();
            String3 = null;
            if (int2 > 0)
                String3 = ((Tweet) MyTweetFragment.q(a).get(-1 + MyTweetFragment.q(a).size())).get_id();
            MyTweetFragment.b(a).b(new String[]{String3});
        }
    }
}
