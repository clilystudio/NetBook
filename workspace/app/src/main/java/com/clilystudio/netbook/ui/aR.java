package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

final class aR
        extends com.clilystudio.netbook.a.e<String, Void, BookRankDetailRoot> {
    private /* synthetic */ BookRankListFragment a;

    private aR(BookRankListFragment bookRankListFragment) {
        this.a = bookRankListFragment;
    }

    /* synthetic */ aR(BookRankListFragment bookRankListFragment, byte by) {
        this(bookRankListFragment);
    }

    private /* varargs */ BookRankDetailRoot a() {
        try {
            b.a();
            BookRankDetailRoot bookRankDetailRoot = b.b().z(this.a.getArguments().getString("book_list_id"));
            return bookRankDetailRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookRankDetailRoot bookRankDetailRoot = (BookRankDetailRoot) object;
        super.onPostExecute(bookRankDetailRoot);
        BookRankListFragment.b(this.a).setVisibility(8);
        if (bookRankDetailRoot != null && bookRankDetailRoot.getRanking() != null) {
            this.a.b(1);
            BookRankListFragment.c(this.a).addAll(Arrays.asList(bookRankDetailRoot.getRanking().getBooks()));
            this.a.a.a((Collection) BookRankListFragment.c(this.a));
            return;
        }
        this.a.b(2);
        e.a((Activity) this.a.getActivity(), (int) 2131034408);
    }
}
