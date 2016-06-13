package com.clilystudio.netbook.reader.txt;

final class k
        implements a {
    private /* synthetic */ ReaderTxtActivity a;

    k(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                if (ReaderTxtActivity.F(this.a).e()) {
                    ReaderTxtActivity.G(this.a);
                    return;
                }
                ReaderTxtActivity.H(this.a);
                return;
            }
            case 2: {
                ReaderTxtActivity.G(this.a);
                return;
            }
            case 0:
        }
        ReaderTxtActivity.I(this.a);
    }
}
