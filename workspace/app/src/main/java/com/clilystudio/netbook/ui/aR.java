package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.model.BookRankDetailRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

final class aR extends com.clilystudio.netbook.a.e {

    private BookRankListFragment a;

    aR(BookRankListFragment BookRankListFragment1, byte byte2) {
        this(BookRankListFragment1);
    }

    private aR(BookRankListFragment BookRankListFragment1) {
        a = BookRankListFragment1;
    }

    private transient BookRankDetailRoot a() {
        BookRankDetailRoot BookRankDetailRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            BookRankDetailRoot3 = com.clilystudio.netbook.api.b.b().z(a.getArguments().getString("book_list_id"));
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return BookRankDetailRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (BookRankDetailRoot) Object1;

        super.onPostExecute(Object2);
        BookRankListFragment.b(a).setVisibility(8);
        if (Object2 != null && ((BookRankDetailRoot) Object2).getRanking() != null) {
            a.b(1);
            BookRankListFragment.c(a).addAll((Collection) Arrays.asList(((BookRankDetailRoot) Object2).getRanking().getBooks()));
            a.a.a((Collection) BookRankListFragment.c(a));
        } else {
            a.b(2);
            com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034408);
        }
    }
}
