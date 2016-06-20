package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.view.LayoutInflater;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

final class aV extends W<BookSummary> {
    public aV(BookTagListActivity bookTagListActivity, LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_book_tags);
    }

    @Override
    protected final /* synthetic */ void a(int n, BookSummary object) {
        BookSummary bookSummary = (BookSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
        this.a(1, bookSummary.getTitle());
        this.a(2, bookSummary.getShortIntro());
        Object[] arrobject = bookSummary.getTags();
        if (arrobject != null && arrobject.length > 0) {
            String string = TextUtils.join((CharSequence) " | ", arrobject);
            this.a(3, false);
            this.a(3, string);
            return;
        }
        this.a(3, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.book_tags};
    }
}
