package com.clilystudio.netbook.download;

import android.os.Handler;
import android.os.Message;

final class b
        extends Handler {
    private /* synthetic */ a a;

    b(a a2) {
        this.a = a2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1: {
                a.a(this.a, 1 + a.a(this.a));
                if (a.a(this.a) != 3) return;
                {
                    a.b(this.a);
                    return;
                }
            }
            default: {
                return;
            }
            case 2:
        }
        a.a(this.a, 2 + a.a(this.a));
        if (a.a(this.a) != 3) return;
        {
            a.b(this.a);
            return;
        }
    }
}
