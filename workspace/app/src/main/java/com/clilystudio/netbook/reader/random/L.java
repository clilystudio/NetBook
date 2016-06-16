package com.clilystudio.netbook.reader.random;

final class L implements a {
    private /* synthetic */ ReaderRandomActivity a;

    L(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case R.id.reader_random_ab_back:
        }
        this.a.onBackPressed();
        b.a(this.a, "random_reader_quit");
    }
}
