package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GirlTopicList;

final class bJ extends e<String, Void, GirlTopicList> {
    private bJ(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    private GirlTopicList a(String[] paramArrayOfString) {
        try {
            GirlTopicList localGirlTopicList = b.b().b(paramArrayOfString[0], paramArrayOfString[1], 0, 20, GirlTopicListActivity.n(this.a));
            return localGirlTopicList;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bJ
 * JD-Core Version:    0.6.2
 */