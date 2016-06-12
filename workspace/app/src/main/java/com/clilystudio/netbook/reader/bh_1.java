package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

final class bh extends Handler {

    private ReaderActivity a;

    bh(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void handleMessage(Message Message1) {
        Object Object2;

        super.handleMessage(Message1);
        Object2 = "";
        if (ReaderActivity.ak(a) == 0 && ReaderActivity.al(a) < ReaderActivity.ai(a))
            Object2 = new StringBuilder("\u6B63\u5728\u7F13\u5B58: ").append(ReaderActivity.D(a)).append(" ( ").append(ReaderActivity.al(a)).append("/").append(ReaderActivity.ai(a)).append(" )...").toString();
        else if (ReaderActivity.ak(a) == -1 || ReaderActivity.al(a) >= ReaderActivity.ai(a))
            Object2 = new StringBuilder("\u7F13\u5B58\u5B8C\u6210: ").append(ReaderActivity.D(a)).toString();
        else if (ReaderActivity.ak(a) == -2)
            Object2 = new StringBuilder("\u5DF2\u505C\u6B62: ").append(ReaderActivity.D(a)).append(" ( ").append(ReaderActivity.al(a)).append("/").append(ReaderActivity.ai(a)).append(" )").toString();
        ReaderActivity.am(a).setText((CharSequence) Object2);
        ReaderActivity.ao(a).add(ReaderActivity.an(a));
    }
}
