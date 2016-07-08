package com.clilystudio.netbook.event;

import com.clilystudio.netbook.db.BookReadRecord;

public final class FeedAddedEvent {
    private BookReadRecord mBookReadRecord;

    public FeedAddedEvent(BookReadRecord bookReadRecord) {
        this.mBookReadRecord = bookReadRecord;
    }

    public final BookReadRecord getBookReadRecord() {
        return this.mBookReadRecord;
    }
}
