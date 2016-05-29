package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.widget.av;

final class ab
        implements av {
    ab(BookHelpActivity paramBookHelpActivity) {
    }

    public final void a() {
        if ((BookHelpActivity.h(this.a) == null) || (BookHelpActivity.h(this.a).getStatus() == AsyncTask.Status.FINISHED))
            BookHelpActivity.b(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ab
 * JD-Core Version:    0.6.2
 */