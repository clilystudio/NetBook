package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class aO implements DialogInterface$OnClickListener {

    private BookTopicListFragment a;

    aO(BookTopicListFragment BookTopicListFragment1) {
        a = BookTopicListFragment1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        if (a.g != int2) {
            BookTopicListFragment BookTopicListFragment3;

            a.g = int2;
            BookTopicListFragment3 = a;
            BookTopicListFragment3.f = BookPostTabActivity.f(a.g);
            a.a.setRefreshing();
        }
    }
}
