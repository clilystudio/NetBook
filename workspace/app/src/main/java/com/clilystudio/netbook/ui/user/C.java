package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask$Status;

final class C implements Runnable {

    private B a;

    C(B B1) {
        a = B1;
    }

    public final void run() {
        if (MyTopicFragment.b(a.a) == null) {
            MyTopicFragment.c(a.a).setVisibility(8);
            MyTopicFragment.a(a.a).setVisibility(0);
            MyTopicFragment.a(a.a).setText((CharSequence) "\u8BF7\u767B\u5F55\u540E\u67E5\u770B");
            MyTopicFragment.d(a.a).n();
        } else {
            G G2;
            String[] String_1darray3;

            if (MyTopicFragment.e(a.a) != null && MyTopicFragment.e(a.a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.user.MyTopicFragment.e(a.a).isCancelled())
                MyTopicFragment.e(a.a).cancel(true);
            MyTopicFragment.a(a.a, new G(a.a, (byte) 0));
            G2 = MyTopicFragment.f(a.a);
            String_1darray3 = new String[1];
            String_1darray3[0] = MyTopicFragment.b(a.a);
            G2.b(String_1darray3);
        }
    }
}
