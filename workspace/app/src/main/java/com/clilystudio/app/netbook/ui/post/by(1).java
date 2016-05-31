package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class by
        implements j {
    by(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void a() {
        if ((GirlTopicListActivity.d_setRight(this.a) == null) || (GirlTopicListActivity.d_setRight(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            GirlTopicListActivity.p(this.a).setVisibility(0);
            if (!am_CommonUtils.a_isTaskStoped(GirlTopicListActivity.h(this.a)))
                GirlTopicListActivity.h(this.a).cancel(true);
            GirlTopicListActivity.a_initContentView(this.a, new bI(this.a, (byte) 0));
            bI localbI = GirlTopicListActivity.d_setRight(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = GirlTopicListActivity.f_setTitle(this.a);
            arrayOfString[1] = GirlTopicListActivity.g(this.a);
            localbI.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.by
 * JD-Core Version:    0.6.2
 */