package com.clilystudio.netbook.reader.random;

final class j
        implements a {
    private /* synthetic */ ReaderRandomActivity a;

    j(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                ReaderRandomActivity.q(this.a);
                return;
            }
            case 2: {
                ReaderRandomActivity.r(this.a);
                return;
            }
            case 0:
        }
        ReaderRandomActivity.s(this.a);
    }
}
