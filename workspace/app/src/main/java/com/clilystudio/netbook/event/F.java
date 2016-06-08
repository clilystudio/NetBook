package com.clilystudio.netbook.event;

public final class F {
    private long a;
    private int b;
    private String c;

    public F(long paramLong, int paramInt) {
        this.a = paramLong;
        this.b = paramInt;
    }

    public final long a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final String toString() {
        return "UpdateAlbumTrackIndexEvent{albumId=" + this.a + ", trackIndex=" + this.b + ", source='" + this.c + '\'' + '}';
    }
}

