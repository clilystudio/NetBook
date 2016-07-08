package com.clilystudio.netbook.event;

public final class FeedRemovedEvent extends BaseBookEvent {
    public FeedRemovedEvent(String bookId) {
        super(bookId);
    }
}
