package com.clilystudio.netbook.event;

public final class F {

    private long a;
    private int b;
    private String c;
    public F(long long1, int int3) {
        a = long1;
        b = int3;
    }

    public final long a() {
        return a;
    }

    public final int b() {
        return b;
    }

    public final String toString() {
        return new StringBuilder("UpdateAlbumTrackIndexEvent{albumId=").append(a).append(", trackIndex=").append(b).append(", source='").append(c).append('\'').append('}').toString();
    }
}
