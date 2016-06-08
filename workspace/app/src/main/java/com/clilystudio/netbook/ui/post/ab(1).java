package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.widget.av;

final class ab
        implements av {
    ab(BookHelpActivity paramBookHelpActivity) {
    }

    public final void a() {
        if ((BookHelpActivity.h(this.a) == null) || (BookHelpActivity.h(this.a).getStatus() == AsyncTask.Status.FINISHED))
            BookHelpActivity.b(this.a);
    }
}

