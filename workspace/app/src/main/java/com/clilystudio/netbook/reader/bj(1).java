package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bj extends BroadcastReceiver {
    bj(ReaderActivity paramReaderActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        o[] arrayOfo = ReaderActivity.i(this.a);
        int i = arrayOfo.length;
        for (int j = 0; j < i; j++)
            arrayOfo[j].k();
    }
}

