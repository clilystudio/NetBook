package com.clilystudio.netbook.event;

public final class ThemeChangedEvent {
    private boolean mNightMode;

    public ThemeChangedEvent(boolean nightMode) {
        this.mNightMode = nightMode;
    }

    public final boolean isNightMode() {
        return this.mNightMode;
    }
}
