package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class v implements Runnable {
    private /* synthetic */ u a;

    v(u u2) {
        this.a = u2;
    }

    @Override
    public final void run() {
        if (MyFavTopicFragment.b(this.a.a) == null) {
            MyFavTopicFragment.c(this.a.a).setVisibility(8);
            MyFavTopicFragment.a(this.a.a).setVisibility(0);
            MyFavTopicFragment.a(this.a.a).setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
            MyFavTopicFragment.d(this.a.a).n();
            return;
        }
        if (MyFavTopicFragment.e(this.a.a) != null && MyFavTopicFragment.e(this.a.a).getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.e(this.a.a).isCancelled()) {
            MyFavTopicFragment.e(this.a.a).cancel(true);
        }
        MyFavTopicFragment.a(this.a.a, new A(this.a.a, 0));
        A a2 = MyFavTopicFragment.f(this.a.a);
        String[] arrstring = new String[]{MyFavTopicFragment.b(this.a.a)};
        a2.b(arrstring);
    }
}
