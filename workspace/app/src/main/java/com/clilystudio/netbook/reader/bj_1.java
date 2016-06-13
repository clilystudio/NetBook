package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bj
        extends BroadcastReceiver {
    private /* synthetic */ ReaderActivity a;

    bj(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        o[] arro = ReaderActivity.i(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].k();
        }
    }
}
