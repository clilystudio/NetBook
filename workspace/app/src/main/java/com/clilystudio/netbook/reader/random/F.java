package com.clilystudio.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.reader.o;

final class F extends BroadcastReceiver {
    F(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        o[] arrayOfo = ReaderRandomActivity.i(this.a);
        int i = arrayOfo.length;
        for (int j = 0; j < i; j++)
            arrayOfo[j].k();
    }
}

