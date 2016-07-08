package com.clilystudio.netbook.event;

public final class GenderIntroEvent {
    private int mGender;

    public GenderIntroEvent(int gender) {
        this.mGender = gender;
    }

    public final int getGender() {
        return this.mGender;
    }
}
