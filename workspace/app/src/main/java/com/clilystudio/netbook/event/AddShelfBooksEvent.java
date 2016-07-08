package com.clilystudio.netbook.event;

public final class AddShelfBooksEvent {
    private String[] mBookIds;

    public AddShelfBooksEvent(String[] bookIds) {
        this.mBookIds = bookIds;
    }

    public final String[] getBookIds() {
        return this.mBookIds;
    }
}
