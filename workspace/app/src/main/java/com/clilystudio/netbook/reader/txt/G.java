package com.clilystudio.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.reader.o;

final class G extends BroadcastReceiver {
    private /* synthetic */ ReaderTxtActivity a;

    G(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        o[] arro = ReaderTxtActivity.d(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].k();
        }
    }
}
