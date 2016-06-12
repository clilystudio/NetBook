package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask$Status;

final class x implements j {

    private MyFavTopicFragment a;

    x(MyFavTopicFragment MyFavTopicFragment1) {
        a = MyFavTopicFragment1;
    }

    public final void a() {
        if (MyFavTopicFragment.e(a) == null || MyFavTopicFragment.e(a).getStatus() == AsyncTask$Status.FINISHED) {
            z z2;
            String[] String_1darray3;

            MyFavTopicFragment.i(a).setVisibility(0);
            if (MyFavTopicFragment.f(a) != null && MyFavTopicFragment.f(a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.user.MyFavTopicFragment.f(a).isCancelled())
                MyFavTopicFragment.f(a).cancel(true);
            MyFavTopicFragment.a(a, new z(a, (byte) 0));
            z2 = MyFavTopicFragment.e(a);
            String_1darray3 = new String[1];
            String_1darray3[0] = MyFavTopicFragment.b(a);
            z2.b(String_1darray3);
        }
    }
}
