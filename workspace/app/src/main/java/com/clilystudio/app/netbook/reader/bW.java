package com.clilystudio.app.netbook.reader;

import android.content.Intent;
import android.view.View;

final class bW
        implements View.OnClickListener {
    bW(ReaderResourceFragment paramReaderResourceFragment) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = LocalChapterListActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a));
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bW
 * JD-Core Version:    0.6.2
 */