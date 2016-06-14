package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class x implements j {
    private /* synthetic */ MyFavTopicFragment a;

    x(MyFavTopicFragment myFavTopicFragment) {
        this.a = myFavTopicFragment;
    }

    @Override
    public final void a() {
        if (MyFavTopicFragment.e(this.a) == null || MyFavTopicFragment.e(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            MyFavTopicFragment.i(this.a).setVisibility(0);
            if (MyFavTopicFragment.f(this.a) != null && MyFavTopicFragment.f(this.a).getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.f(this.a).isCancelled()) {
                MyFavTopicFragment.f(this.a).cancel(true);
            }
            MyFavTopicFragment.a(this.a, new z(this.a, 0));
            z z2 = MyFavTopicFragment.e(this.a);
            String[] arrstring = new String[]{MyFavTopicFragment.b(this.a)};
            z2.b(arrstring);
        }
    }
}
