package com.clilystudio.app.netbook.reader;

final class aV
        implements View.OnSystemUiVisibilityChangeListener {
    aV(ReaderActivity paramReaderActivity) {
    }

    public final void onSystemUiVisibilityChange(int paramInt) {
        ReaderActivity localReaderActivity = this.a;
        if ((paramInt & 0x1) == 0) ;
        for (boolean bool = true; ; bool = false) {
            ReaderActivity.f(localReaderActivity, bool);
            return;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aV
 * JD-Core Version:    0.6.2
 */