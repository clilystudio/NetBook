package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.model.DiscussSummaryList;

final class bh extends e<String, Void, DiscussSummary[]> {
    private bh(CommonPostListActivity paramCommonPostListActivity) {
    }

    private DiscussSummary[] a(String[] paramArrayOfString) {
        try {
            DiscussSummaryList localDiscussSummaryList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], CommonPostListActivity.r(this.a).getCount(), 20, CommonPostListActivity.n(this.a), CommonPostListActivity.o(this.a));
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

