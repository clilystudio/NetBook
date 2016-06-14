package com.clilystudio.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.reader.o;

final class F extends BroadcastReceiver {
    private /* synthetic */ ReaderRandomActivity a;

    F(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        o[] arro = ReaderRandomActivity.i(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].k();
        }
    }
}
