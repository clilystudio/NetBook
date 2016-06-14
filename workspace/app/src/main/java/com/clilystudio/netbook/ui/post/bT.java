package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Tweet;

final class bT implements j {
    private /* synthetic */ MyTweetFragment a;

    bT(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void a() {
        if (MyTweetFragment.b(this.a) == null || MyTweetFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            MyTweetFragment.v(this.a).setVisibility(View.VISIBLE);
            if (!am.a((AsyncTask) MyTweetFragment.w(this.a))) {
                MyTweetFragment.w(this.a).cancel(true);
            }
            MyTweetFragment.a(this.a, new bW(this.a, 0));
            int n = MyTweetFragment.q(this.a).size();
            String string = null;
            if (n > 0) {
                string = ((Tweet) MyTweetFragment.q(this.a).get(-1 + MyTweetFragment.q(this.a).size())).get_id();
            }
            MyTweetFragment.b(this.a).b(string);
        }
    }
}
