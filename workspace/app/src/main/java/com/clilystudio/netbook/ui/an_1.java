package com.clilystudio.netbook.ui;

import android.os.AsyncTask;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an implements k<ListView> {
    final /* synthetic */ BookCategoryFragment a;

    an(BookCategoryFragment bookCategoryFragment) {
        this.a = bookCategoryFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        BookCategoryFragment.c(this.a).setVisibility(View.GONE);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                if (BookCategoryFragment.d(an.this.a) != null && BookCategoryFragment.d(an.this.a).getStatus() != AsyncTask.Status.FINISHED && !BookCategoryFragment.d(an.this.a).isCancelled()) {
                    BookCategoryFragment.d(an.this.a).cancel(true);
                }
                BookCategoryFragment.a(an.this.a, new aq(an.this.a, false));
                BookCategoryFragment.d(an.this.a).b(new String[0]);
            }
        }, 1000);
    }
}
