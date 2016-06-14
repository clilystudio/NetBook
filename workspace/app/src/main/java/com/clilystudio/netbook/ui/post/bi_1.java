package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.model.DiscussSummaryList;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;

final class bi
        extends com.clilystudio.netbook.a_pack.e<String, Void, DiscussSummary[]> {
    private /* synthetic */ CommonPostListActivity a;

    private bi(CommonPostListActivity commonPostListActivity) {
        this.a = commonPostListActivity;
    }

    /* synthetic */ bi(CommonPostListActivity commonPostListActivity, byte by) {
        this(commonPostListActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ DiscussSummary[] a(String... arrstring) {
        DiscussSummaryList discussSummaryList = b.b().a(arrstring[0], arrstring[1], 0, 20, CommonPostListActivity.n(this.a), CommonPostListActivity.o(this.a));
        if (discussSummaryList == null) return null;
        try {
            return discussSummaryList.getPosts();
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        DiscussSummary[] arrdiscussSummary = (DiscussSummary[]) object;
        super.onPostExecute(arrdiscussSummary);
        CommonPostListActivity.b(this.a).setVisibility(8);
        CommonPostListActivity.p(this.a).setVisibility(8);
        CommonPostListActivity.q(this.a).setVisibility(8);
        CommonPostListActivity.j(this.a).n();
        if (arrdiscussSummary != null) {
            CommonPostListActivity.h(this.a).clear();
            int n = arrdiscussSummary.length;
            if (n > 0) {
                CommonPostListActivity.h(this.a).addAll(Arrays.asList(arrdiscussSummary));
                CommonPostListActivity.r(this.a).a(CommonPostListActivity.h(this.a));
                if (n < 20) {
                    CommonPostListActivity.j(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                CommonPostListActivity.j(this.a).setOnLastItemVisibleListener(CommonPostListActivity.s(this.a));
                return;
            }
            CommonPostListActivity.r(this.a).a(CommonPostListActivity.h(this.a));
            CommonPostListActivity.j(this.a).setOnLastItemVisibleListener(null);
            CommonPostListActivity.t(this.a);
            return;
        }
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
