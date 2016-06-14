package com.clilystudio.netbook.reader;

final class cB implements a {
    private /* synthetic */ ReaderWebActivity a;

    cB(ReaderWebActivity readerWebActivity) {
        this.a = readerWebActivity;
    }

    @Override
    public final void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 2131493881: {
                this.a.onBackPressed();
                return;
            }
            case 2131493861: {
                this.a.b();
                ReaderWebActivity.a(this.a).a(false);
                return;
            }
            case 2131493862: {
                this.a.a();
                return;
            }
            case 2131493893:
        }
        ReaderWebActivity.b(this.a);
    }
}
