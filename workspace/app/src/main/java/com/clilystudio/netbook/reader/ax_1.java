package com.clilystudio.netbook.reader;

final class ax implements com.umeng.update.a {

    private ReaderActivity a;

    ax(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                if (ReaderActivity.T(a).e())
                    ReaderActivity.U(a);
                else
                    ReaderActivity.V(a);
                return;
            case 2:
                ReaderActivity.U(a);
                return;
            case 0:
                ReaderActivity.W(a);
                return;
        }
    }
}
