package com.clilystudio.netbook.event;

public class BaseBookEvent {
    private final String mBookId;

    public BaseBookEvent(String bookId) {
        this.mBookId = bookId;
    }

    public final String getBookId() {
        return this.mBookId;
    }
}
