package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.DiscussSummary;
import com.clilystudio.app.netbook.model.DiscussSummaryList;

final class bi extends e_BaseAsyncTask<String, Void, DiscussSummary[]> {
    private bi(CommonPostListActivity paramCommonPostListActivity) {
    }

    private DiscussSummary[] a(String[] paramArrayOfString) {
        try {
            DiscussSummaryList localDiscussSummaryList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0, 20, CommonPostListActivity.n(this.a), CommonPostListActivity.o(this.a));
            if (localDiscussSummaryList != null) {
                DiscussSummary[] arrayOfDiscussSummary = localDiscussSummaryList.getPosts();
                return arrayOfDiscussSummary;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bi
 * JD-Core Version:    0.6.2
 */