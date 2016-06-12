package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bi extends BroadcastReceiver {

    private ReaderActivity a;

    bi(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        int int3 = 0;
        int int4 = Intent2.getIntExtra("level", 0);
        int int5 = Intent2.getIntExtra("scale", 100);
        int int6 = int4 * 100 / int5;

        if (ReaderActivity.ap(a) != int6) {
            o[] o_1darray8;
            int int9;

            ReaderActivity.n(a, int6);
            o_1darray8 = ReaderActivity.i(a);
            int9 = o_1darray8.length;
            while (int3 < int9) {
                o_1darray8[int3].a(int6);
                ++int3;
            }
        }
    }
}
