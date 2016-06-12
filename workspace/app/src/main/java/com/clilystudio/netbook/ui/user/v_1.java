package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask$Status;

final class v implements Runnable {

    private u a;

    v(u u1) {
        a = u1;
    }

    public final void run() {
        if (MyFavTopicFragment.b(a.a) == null) {
            MyFavTopicFragment.c(a.a).setVisibility(8);
            MyFavTopicFragment.a(a.a).setVisibility(0);
            MyFavTopicFragment.a(a.a).setText((CharSequence) "\u8BF7\u767B\u5F55\u540E\u67E5\u770B");
            MyFavTopicFragment.d(a.a).n();
        } else {
            A A2;
            String[] String_1darray3;

            if (MyFavTopicFragment.e(a.a) != null && MyFavTopicFragment.e(a.a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.user.MyFavTopicFragment.e(a.a).isCancelled())
                MyFavTopicFragment.e(a.a).cancel(true);
            MyFavTopicFragment.a(a.a, new A(a.a, (byte) 0));
            A2 = MyFavTopicFragment.f(a.a);
            String_1darray3 = new String[1];
            String_1darray3[0] = MyFavTopicFragment.b(a.a);
            A2.b(String_1darray3);
        }
    }
}
