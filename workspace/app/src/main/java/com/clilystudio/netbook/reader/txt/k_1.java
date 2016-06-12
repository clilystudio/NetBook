package com.clilystudio.netbook.reader.txt;

final class k implements com.clilystudio.netbook.umeng.update.a {

    private ReaderTxtActivity a;

    k(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                if (ReaderTxtActivity.F(a).e())
                    ReaderTxtActivity.G(a);
                else
                    ReaderTxtActivity.H(a);
                return;
            case 2:
                ReaderTxtActivity.G(a);
                return;
            case 0:
                ReaderTxtActivity.I(a);
                return;
        }
    }
}
