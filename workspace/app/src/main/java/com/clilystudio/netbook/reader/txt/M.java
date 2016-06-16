package com.clilystudio.netbook.reader.txt;

final class M implements a {
    private /* synthetic */ ReaderTxtActivity a;

    M(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case R.id.read_opt_setting: {
                ReaderTxtActivity.s(this.a).a();
                return;
            }
            case R.id.read_opt_toc: {
                ReaderTxtActivity.a(this.a);
                ReaderTxtActivity.t(this.a);
                return;
            }
            case R.id.reader_oper_back: {
                this.a.onBackPressed();
                return;
            }
            case R.id.read_opt_orientation: {
                ReaderTxtActivity.b(this.a, true);
                ReaderTxtActivity.u(this.a);
                return;
            }
            case R.id.reader_ab_tts:
        }
        ReaderTxtActivity.v(this.a);
    }
}
