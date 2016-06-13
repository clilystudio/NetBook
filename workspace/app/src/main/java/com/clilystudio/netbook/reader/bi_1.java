package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bi
        extends BroadcastReceiver {
    private /* synthetic */ ReaderActivity a;

    bi(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onReceive(Context context, Intent intent) {
        int n2 = intent.getIntExtra("level", 0);
        int n3 = intent.getIntExtra("scale", 100);
        int n4 = n2 * 100 / n3;
        if (ReaderActivity.ap(this.a) != n4) {
            ReaderActivity.n(this.a, n4);
            o[] arro = ReaderActivity.i(this.a);
            int n5 = arro.length;
            for (int i = 0; i < n5; ++i) {
                arro[i].a(n4);
            }
        }
    }
}
