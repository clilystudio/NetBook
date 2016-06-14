package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookSummary;

final class G implements AdapterView.OnItemClickListener {
    private /* synthetic */ AuthorBooksActivity a;

    G(AuthorBooksActivity authorBooksActivity) {
        this.a = authorBooksActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        BookSummary bookSummary;
        int n2 = n - AuthorBooksActivity.a(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < AuthorBooksActivity.b(this.a).getCount() && (bookSummary = (BookSummary) AuthorBooksActivity.b(this.a).getItem(n2)) != null) {
            this.a.startActivity(BookInfoActivity.a(this.a, bookSummary.getId()));
        }
    }
}
