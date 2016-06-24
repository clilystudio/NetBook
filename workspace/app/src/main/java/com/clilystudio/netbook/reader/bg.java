package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bg extends BroadcastReceiver {
    private /* synthetic */ ReaderActivity a;

    bg(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if ("com.clilystudio.netbook.dlReceiver".equals(intent.getAction())) {
            String string = intent.getStringExtra("bookId");
            if (ReaderActivity.M(this.a).equals(string)) {
                ReaderActivity.g(this.a, true);
                ReaderActivity.l(this.a, intent.getIntExtra("SerDlCurrentCount", 0));
                ReaderActivity.k(this.a, intent.getIntExtra("SerDlChapterCount", 0));
                ReaderActivity.a(this.a, intent.getStringExtra("SerDlLink"));
                ReaderActivity.m(this.a, intent.getIntExtra("SerDlStopFlag", 0));
                ReaderActivity.aj(this.a).sendMessage(ReaderActivity.aj(this.a).obtainMessage());
            }
        }
    }
}
