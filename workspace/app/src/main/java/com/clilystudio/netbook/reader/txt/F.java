package com.clilystudio.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.reader.o;

final class F extends BroadcastReceiver {
    private /* synthetic */ ReaderTxtActivity a;

    F(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onReceive(Context context, Intent intent) {
        int n2 = intent.getIntExtra("level", 0);
        int n3 = intent.getIntExtra("scale", 100);
        int n4 = n2 * 100 / n3;
        if (ReaderTxtActivity.N(this.a) != n4) {
            ReaderTxtActivity.g(this.a, n4);
            o[] arro = ReaderTxtActivity.d(this.a);
            int n5 = arro.length;
            for (int i = 0; i < n5; ++i) {
                arro[i].a(n4);
            }
        }
    }
}
