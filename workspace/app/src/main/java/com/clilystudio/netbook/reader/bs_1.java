package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class bs implements View$OnClickListener {

    private ReaderMenuFragment a;

    bs(ReaderMenuFragment ReaderMenuFragment1) {
        a = ReaderMenuFragment1;
    }

    public final void onClick(View View1) {
        switch (View1.getId()) {
            case 2131492933:
            case 2131492916:
                if (ReaderMenuFragment.a(a)) {
                    try {
                        a.startActivity((Intent) new InsideLinkIntent((Context) a.getActivity(), ReaderMenuFragment.b(a)));
                    } catch (UnImplementException UnImplementException6) {
                        UnImplementException6.printStackTrace();
                        return;
                    }
                } else
                    ReaderMenuFragment.a(a, ReaderMenuFragment.c(a), ReaderMenuFragment.d(a), ReaderMenuFragment.e(a));
                return;
            case 2131493452:
                Intent Intent3;

                com.clilystudio.netbook.umeng.a.b.a((Context) a.getActivity(), "reader_menu_topic");
                Intent3 = BookPostTabActivity.a((Context) a.getActivity(), ReaderMenuFragment.f(a), ReaderMenuFragment.g(a));
                Intent3.putExtra("extra_sort_type", "created");
                a.startActivity(Intent3);
                new com.clilystudio.netbook.a.f(ReaderMenuFragment.f(a)).b(new Void[0]);
                ReaderMenuFragment.h(a);
                return;
            case 2131493455:
                ReaderMenuFragment.i(a);
                return;
            case 2131493459:
                ReaderActivity ReaderActivity2 = (ReaderActivity) a.getActivity();

                if (ReaderActivity2 != null) {
                    ReaderActivity2.i();
                    return;
                }
            default:
                return;
        }
    }
}
