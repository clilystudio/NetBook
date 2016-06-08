package com.clilystudio.netbook.ui.post;

final class dM
        implements j {
    dM(TweetListFragment paramTweetListFragment) {
    }

    public final void a() {
        if ((TweetListFragment.b(this.a) == null) || (TweetListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            TweetListFragment.k(this.a).setVisibility(0);
            if (!am.a(TweetListFragment.l(this.a)))
                TweetListFragment.l(this.a).cancel(true);
            TweetListFragment.a(this.a, new dN(this.a, 0));
            TweetListFragment.b(this.a).b(new String[]{"50bff3ec209793513100001c", "updated"});
        }
    }
}

