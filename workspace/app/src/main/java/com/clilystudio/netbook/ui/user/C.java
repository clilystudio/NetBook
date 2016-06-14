package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class C implements Runnable {
    private /* synthetic */ B a;

    C(B b) {
        this.a = b;
    }

    @Override
    public final void run() {
        if (MyTopicFragment.b(this.a.a) == null) {
            MyTopicFragment.c(this.a.a).setVisibility(View.GONE);
            MyTopicFragment.a(this.a.a).setVisibility(View.VISIBLE);
            MyTopicFragment.a(this.a.a).setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
            MyTopicFragment.d(this.a.a).n();
            return;
        }
        if (MyTopicFragment.e(this.a.a) != null && MyTopicFragment.e(this.a.a).getStatus() != AsyncTask.Status.FINISHED && !MyTopicFragment.e(this.a.a).isCancelled()) {
            MyTopicFragment.e(this.a.a).cancel(true);
        }
        MyTopicFragment.a(this.a.a, new G(this.a.a, 0));
        G g = MyTopicFragment.f(this.a.a);
        String[] arrstring = new String[]{MyTopicFragment.b(this.a.a)};
        g.b(arrstring);
    }
}
