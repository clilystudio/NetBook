package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.model.Tweet;

final class bT
        implements j {
    bT(MyTweetFragment paramMyTweetFragment) {
    }

    public final void a() {
        if ((MyTweetFragment.b(this.a) == null) || (MyTweetFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            MyTweetFragment.v(this.a).setVisibility(0);
            if (!am.a(MyTweetFragment.w(this.a)))
                MyTweetFragment.w(this.a).cancel(true);
            MyTweetFragment.a(this.a, new bW(this.a, 0));
            int i = MyTweetFragment.q(this.a).size();
            String str = null;
            if (i > 0)
                str = ((Tweet) MyTweetFragment.q(this.a).get(-1 + MyTweetFragment.q(this.a).size())).get_id();
            MyTweetFragment.b(this.a).b(new String[]{str});
        }
    }
}

