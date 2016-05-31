package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class aX
        implements j {
    aX(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void a() {
        if ((CommonPostListActivity.c_initContentView(this.a) == null) || (CommonPostListActivity.c_initContentView(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            CommonPostListActivity.q(this.a).setVisibility(0);
            if (!am_CommonUtils.a_isTaskStoped(CommonPostListActivity.f_setTitle(this.a)))
                CommonPostListActivity.f_setTitle(this.a).cancel(true);
            CommonPostListActivity.a(this.a, new bh(this.a, (byte) 0));
            bh localbh = CommonPostListActivity.c_initContentView(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = CommonPostListActivity.d_setTitle(this.a);
            arrayOfString[1] = CommonPostListActivity.d_setRight(this.a);
            localbh.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aX
 * JD-Core Version:    0.6.2
 */