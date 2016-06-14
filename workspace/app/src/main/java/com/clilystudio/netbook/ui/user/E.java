package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class E implements j {
    private /* synthetic */ MyTopicFragment a;

    E(MyTopicFragment myTopicFragment) {
        this.a = myTopicFragment;
    }

    @Override
    public final void a() {
        if (MyTopicFragment.e(this.a) == null || MyTopicFragment.e(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            MyTopicFragment.i(this.a).setVisibility(0);
            if (MyTopicFragment.f(this.a) != null && MyTopicFragment.f(this.a).getStatus() != AsyncTask.Status.FINISHED && !MyTopicFragment.f(this.a).isCancelled()) {
                MyTopicFragment.f(this.a).cancel(true);
            }
            MyTopicFragment.a(this.a, new F(this.a, 0));
            F f = MyTopicFragment.e(this.a);
            String[] arrstring = new String[]{MyTopicFragment.b(this.a)};
            f.b(arrstring);
        }
    }
}
