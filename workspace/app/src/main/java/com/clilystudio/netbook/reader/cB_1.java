package com.clilystudio.netbook.reader;

final class cB implements com.clilystudio.netbook.umeng.update.a {

    private ReaderWebActivity a;

    cB(ReaderWebActivity ReaderWebActivity1) {
        a = ReaderWebActivity1;
    }

    public final void a(int int1) {
        switch (int1) {
            default:
                return;
            case 2131493881:
                a.onBackPressed();
                return;
            case 2131493861:
                a.b();
                ReaderWebActivity.a(a).a(false);
                return;
            case 2131493862:
                a.a();
                return;
            case 2131493893:
                ReaderWebActivity.b(a);
                return;
        }
    }
}
