package com.clilystudio.netbook.ui.user;

final class C
        implements Runnable {
    C(B paramB) {
    }

    public final void run() {
        if (MyTopicFragment.b(this.a.a) == null) {
            MyTopicFragment.c(this.a.a).setVisibility(8);
            MyTopicFragment.a(this.a.a).setVisibility(0);
            MyTopicFragment.a(this.a.a).setText("请登录后查看");
            MyTopicFragment.d(this.a.a).n();
            return;
        }
        if ((MyTopicFragment.e(this.a.a) != null) && (MyTopicFragment.e(this.a.a).getStatus() != AsyncTask.Status.FINISHED) && (!MyTopicFragment.e(this.a.a).isCancelled()))
            MyTopicFragment.e(this.a.a).cancel(true);
        MyTopicFragment.a(this.a.a, new G(this.a.a, 0));
        G localG = MyTopicFragment.f(this.a.a);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = MyTopicFragment.b(this.a.a);
        localG.b(arrayOfString);
    }
}
