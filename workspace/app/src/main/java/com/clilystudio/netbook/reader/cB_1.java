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
            case R.id.reader_oper_back: {
                this.a.onBackPressed();
                return;
            }
            case R.id.reader_ab_topic: {
                this.a.b();
                ReaderWebActivity.a(this.a).a(false);
                return;
            }
            case R.id.reader_ab_read_mode: {
                this.a.a();
                return;
            }
            case R.id.reader_ab_chapter_url_view:
        }
        ReaderWebActivity.b(this.a);
    }
}
