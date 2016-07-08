package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.BookRankSummary;

public final class BookRankClickEvent {
    private BookRankSummary mBookRankSummary;
    private boolean mIsMale;

    public BookRankClickEvent(BookRankSummary bookRankSummary, boolean isMale) {
        this.mBookRankSummary = bookRankSummary;
        this.mIsMale = isMale;
    }

    public final boolean isMale() {
        return this.mIsMale;
    }

    public final BookRankSummary getBookRankSummary() {
        return this.mBookRankSummary;
    }
}
