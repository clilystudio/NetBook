package com.clilystudio.netbook.reader.txt;

final class P
        implements Runnable {
    private /* synthetic */ ScanTxtFileActivity a;

    P(ScanTxtFileActivity scanTxtFileActivity) {
        this.a = scanTxtFileActivity;
    }

    @Override
    public final void run() {
        ScanTxtFileActivity.a(this.a).a(ScanTxtFileActivity.b(this.a));
        ScanTxtFileActivity.a(this.a, ScanTxtFileActivity.b(this.a).size());
    }
}
