package com.clilystudio.app.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.app.netbook.reader.o;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.F
 * JD-Core Version:    0.6.2
 */