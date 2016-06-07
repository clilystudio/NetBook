package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GirlTopicList;

final class bI extends e_BaseAsyncTask<String, Void, GirlTopicList> {
    private bI(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    private GirlTopicList a(String[] paramArrayOfString) {
        if (!isCancelled())
            try {
                GirlTopicList localGirlTopicList = b.b().b(paramArrayOfString[0], paramArrayOfString[1], GirlTopicListActivity.j(this.a).size(), 20, GirlTopicListActivity.n(this.a));
                return localGirlTopicList;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bI
 * JD-Core Version:    0.6.2
 */