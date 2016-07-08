package com.clilystudio.netbook.event;

public final class ModeChangedEvent {
    private int mMode = 1;

    public ModeChangedEvent(int mode) {
        this.mMode = mode;
    }

    public final int getMode() {
        return this.mMode;
    }
}
