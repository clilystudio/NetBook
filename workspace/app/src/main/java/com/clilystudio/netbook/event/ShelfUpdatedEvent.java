package com.clilystudio.netbook.event;

public final class ShelfUpdatedEvent {
    private int mBookCounts = 1;

    public ShelfUpdatedEvent() {
    }

    public ShelfUpdatedEvent(int bookCounts) {
        this.mBookCounts = bookCounts;
    }

    public final int getBookCounts() {
        return this.mBookCounts;
    }
}
