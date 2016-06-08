package com.clilystudio.netbook.reader.txt;

final class P
        implements Runnable {
    P(ScanTxtFileActivity paramScanTxtFileActivity) {
    }

    public final void run() {
        ScanTxtFileActivity.a(this.a).a(ScanTxtFileActivity.b(this.a));
        ScanTxtFileActivity.a(this.a, ScanTxtFileActivity.b(this.a).size());
    }
}

