package com.clilystudio.app.netbook.reader.txt;

final class P
        implements Runnable {
    P(ScanTxtFileActivity paramScanTxtFileActivity) {
    }

    public final void run() {
        ScanTxtFileActivity.a_initContentView(this.a).a(ScanTxtFileActivity.b_initContentView(this.a));
        ScanTxtFileActivity.a_initContentView(this.a, ScanTxtFileActivity.b_initContentView(this.a).size());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.P
 * JD-Core Version:    0.6.2
 */