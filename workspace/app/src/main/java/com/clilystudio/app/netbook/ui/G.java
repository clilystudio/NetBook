package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.BookSummary;

final class G
        implements AdapterView.OnItemClickListener {
    G(AuthorBooksActivity paramAuthorBooksActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - AuthorBooksActivity.a(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < AuthorBooksActivity.b_initContentView(this.a).getCount())) {
            BookSummary localBookSummary = (BookSummary) AuthorBooksActivity.b_initContentView(this.a).getItem(i);
            if (localBookSummary != null)
                this.a.startActivity(BookInfoActivity.a(this.a, localBookSummary.getId()));
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.G
 * JD-Core Version:    0.6.2
 */