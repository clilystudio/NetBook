package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.j;

final class dg
        implements j {
    dg(ReviewListActivity paramReviewListActivity) {
    }

    public final void a() {
        if ((ReviewListActivity.f_setTitle(this.a) == null) || (ReviewListActivity.f_setTitle(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            ReviewListActivity.s(this.a).setVisibility(0);
            if (!am_CommonUtils.a_isTaskStoped(ReviewListActivity.j(this.a)))
                ReviewListActivity.j(this.a).cancel(true);
            ReviewListActivity.a_initContentView(this.a, new do (this.a, (byte) 0));
            do localdo = ReviewListActivity.f_setTitle(this.a);
            String[] arrayOfString = new String[3];
            arrayOfString[0] = ReviewListActivity.g(this.a);
            arrayOfString[1] = ReviewListActivity.h(this.a);
            arrayOfString[2] = ReviewListActivity.i(this.a);
            localdo.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dg
 * JD-Core Version:    0.6.2
 */