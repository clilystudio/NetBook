package com.clilystudio.netbook.widget;

enum CoverLoadingLayer$Status {
    static {
        PAUSE = new Status("PAUSE", 3);
        PENDING = new Status("PENDING", 4);
        DOWNLOADED = new Status("DOWNLOADED", 5);
        Status[] arrayOfStatus = new Status[6];
        arrayOfStatus[0] = NONE;
        arrayOfStatus[1] = PREPARE;
        arrayOfStatus[2] = PROGRESS;
        arrayOfStatus[3] = PAUSE;
        arrayOfStatus[4] = PENDING;
        arrayOfStatus[5] = DOWNLOADED;
        a = arrayOfStatus;
    }
}

