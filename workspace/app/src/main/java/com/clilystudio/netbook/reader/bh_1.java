package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

final class bh
        extends Handler {
    private /* synthetic */ ReaderActivity a;

    bh(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void handleMessage(Message message) {
        super.handleMessage(message);
        String string = "";
        if (ReaderActivity.ak(this.a) == 0 && ReaderActivity.al(this.a) < ReaderActivity.ai(this.a)) {
            string = "\u6b63\u5728\u7f13\u5b58: " + ReaderActivity.D(this.a) + " ( " + ReaderActivity.al(this.a) + "/" + ReaderActivity.ai(this.a) + " )...";
        } else if (ReaderActivity.ak(this.a) == -1 || ReaderActivity.al(this.a) >= ReaderActivity.ai(this.a)) {
            string = "\u7f13\u5b58\u5b8c\u6210: " + ReaderActivity.D(this.a);
        } else if (ReaderActivity.ak(this.a) == -2) {
            string = "\u5df2\u505c\u6b62: " + ReaderActivity.D(this.a) + " ( " + ReaderActivity.al(this.a) + "/" + ReaderActivity.ai(this.a) + " )";
        }
        ReaderActivity.am(this.a).setText(string);
        ReaderActivity.ao(this.a).add(ReaderActivity.an(this.a));
    }
}
