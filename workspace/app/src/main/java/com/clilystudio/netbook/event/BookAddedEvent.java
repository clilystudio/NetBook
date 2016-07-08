package com.clilystudio.netbook.event;

public final class BookAddedEvent extends BaseBookEvent {
    private boolean mIsLocal = true;

    public BookAddedEvent(String bookId) {
        super(bookId);
    }

    public BookAddedEvent(String bookId, boolean isLocal) {
        super(bookId);
        this.mIsLocal = isLocal;
    }

    public final boolean isLocal() {
        return this.mIsLocal;
    }
}
