package com.clilystudio.app.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.app.netbook.reader.o;

final class G extends BroadcastReceiver {
    G(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        o[] arrayOfo = ReaderTxtActivity.d(this.a);
        int i = arrayOfo.length;
        for (int j = 0; j < i; j++)
            arrayOfo[j].k();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.G
 * JD-Core Version:    0.6.2
 */