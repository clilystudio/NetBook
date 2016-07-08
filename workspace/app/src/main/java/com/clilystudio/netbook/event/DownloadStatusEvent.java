package com.clilystudio.netbook.event;

public final class DownloadStatusEvent extends BaseBookEvent {
    private int mStatus;

    public DownloadStatusEvent(String bookId, int status) {
        super(bookId);
        this.mStatus = status;
    }

    public final int getStatus() {
        return this.mStatus;
    }
}
