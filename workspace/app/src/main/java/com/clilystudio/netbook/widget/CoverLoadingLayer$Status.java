package com.clilystudio.netbook.widget;

final class CoverLoadingLayer$Status extends Enum<CoverLoadingLayer$Status> {
    public static final /* enum */ CoverLoadingLayer$Status DOWNLOADED;
    public static final /* enum */ CoverLoadingLayer$Status NONE;
    public static final /* enum */ CoverLoadingLayer$Status PAUSE;
    public static final /* enum */ CoverLoadingLayer$Status PENDING;
    public static final /* enum */ CoverLoadingLayer$Status PREPARE;
    public static final /* enum */ CoverLoadingLayer$Status PROGRESS;
    private static final /* synthetic */ CoverLoadingLayer$Status[] a;

    static {
        NONE = new CoverLoadingLayer$Status();
        PREPARE = new CoverLoadingLayer$Status();
        PROGRESS = new CoverLoadingLayer$Status();
        PAUSE = new CoverLoadingLayer$Status();
        PENDING = new CoverLoadingLayer$Status();
        DOWNLOADED = new CoverLoadingLayer$Status();
        CoverLoadingLayer$Status[] arrcoverLoadingLayer$Status = new CoverLoadingLayer$Status[]{NONE, PREPARE, PROGRESS, PAUSE, PENDING, DOWNLOADED};
        a = arrcoverLoadingLayer$Status;
    }

    private CoverLoadingLayer$Status() {
        super(string, n);
    }

    public static CoverLoadingLayer$Status valueOf(String string) {
        return (CoverLoadingLayer$Status) ((Object) Enum.valueOf(CoverLoadingLayer$Status.class, string));
    }

    public static CoverLoadingLayer$Status[] values() {
        return (CoverLoadingLayer$Status[]) a.clone();
    }
}
