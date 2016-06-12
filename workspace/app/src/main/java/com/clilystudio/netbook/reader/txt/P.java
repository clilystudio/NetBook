package com.clilystudio.netbook.reader.txt;

import java.util.Collection;

final class P implements Runnable {

    private ScanTxtFileActivity a;

    P(ScanTxtFileActivity ScanTxtFileActivity1) {
        a = ScanTxtFileActivity1;
    }

    public final void run() {
        ScanTxtFileActivity.a(a).a((Collection) ScanTxtFileActivity.b(a));
        ScanTxtFileActivity.a(a, ScanTxtFileActivity.b(a).size());
    }
}
