package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class aX
        implements j {
    aX(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void a() {
        if ((CommonPostListActivity.c(this.a) == null) || (CommonPostListActivity.c(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            CommonPostListActivity.q(this.a).setVisibility(0);
            if (!am_CommonUtils.a_isTaskStoped(CommonPostListActivity.f(this.a)))
                CommonPostListActivity.f(this.a).cancel(true);
            CommonPostListActivity.a(this.a, new bh(this.a, (byte) 0));
            bh localbh = CommonPostListActivity.c(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = CommonPostListActivity.d(this.a);
            arrayOfString[1] = CommonPostListActivity.e(this.a);
            localbh.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aX
 * JD-Core Version:    0.6.2
 */