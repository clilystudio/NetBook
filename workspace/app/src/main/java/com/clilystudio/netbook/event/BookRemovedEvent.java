package com.clilystudio.netbook.event;

public final class BookRemovedEvent extends BaseBookEvent {
    public BookRemovedEvent(String bookId) {
        super(bookId);
    }
}
