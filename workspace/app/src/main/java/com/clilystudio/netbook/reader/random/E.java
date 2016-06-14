package com.clilystudio.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.reader.o;

final class E extends BroadcastReceiver {
    private /* synthetic */ ReaderRandomActivity a;

    E(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onReceive(Context context, Intent intent) {
        int n2 = intent.getIntExtra("level", 0);
        int n3 = intent.getIntExtra("scale", 100);
        int n4 = n2 * 100 / n3;
        if (ReaderRandomActivity.x(this.a) != n4) {
            ReaderRandomActivity.d(this.a, n4);
            o[] arro = ReaderRandomActivity.i(this.a);
            int n5 = arro.length;
            for (int i = 0; i < n5; ++i) {
                arro[i].a(n4);
            }
        }
    }
}
