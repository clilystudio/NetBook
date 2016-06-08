package com.clilystudio.netbook.reader;

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

