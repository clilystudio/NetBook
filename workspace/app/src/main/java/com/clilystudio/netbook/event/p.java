package com.clilystudio.netbook.event;

import com.clilystudio.netbook.db.AudioRecord;

public final class p {
    private int a;
    private AudioRecord b;

    public final void a(int n) {
        this.a = n;
    }

    public final void a(AudioRecord audioRecord) {
        this.b = audioRecord;
    }

    public final boolean a() {
        if (1 == this.a) {
            return true;
        }
        return false;
    }

    public final AudioRecord b() {
        return this.b;
    }
}
