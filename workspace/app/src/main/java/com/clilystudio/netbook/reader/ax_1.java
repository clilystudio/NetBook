package com.clilystudio.netbook.reader;

final class ax
        implements a {
    private /* synthetic */ ReaderActivity a;

    ax(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                if (ReaderActivity.T(this.a).e()) {
                    ReaderActivity.U(this.a);
                    return;
                }
                ReaderActivity.V(this.a);
                return;
            }
            case 2: {
                ReaderActivity.U(this.a);
                return;
            }
            case 0:
        }
        ReaderActivity.W(this.a);
    }
}
