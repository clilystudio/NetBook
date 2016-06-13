package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

final class aV
        extends W<BookSummary> {
    public aV(BookTagListActivity bookTagListActivity, LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903270);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookSummary bookSummary = (BookSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), 2130837766);
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
        return new int[]{2131493616, 2131493605, 2131493617, 2131493635};
    }
}
