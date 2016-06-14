package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GirlTopicList;
import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bI extends com.clilystudio.netbook.a_pack.e<String, Void, GirlTopicList> {
    private /* synthetic */ GirlTopicListActivity a;

    private bI(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    /* synthetic */ bI(GirlTopicListActivity girlTopicListActivity, byte by) {
        this(girlTopicListActivity);
    }

    private /* varargs */ GirlTopicList a(String... arrstring) {
        if (!this.isCancelled()) {
            try {
                GirlTopicList girlTopicList = b.b().b(arrstring[0], arrstring[1], GirlTopicListActivity.j(this.a).size(), 20, GirlTopicListActivity.n(this.a));
                return girlTopicList;
            } catch (Exception var2_3) {
                var2_3.printStackTrace();
            }
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        GirlTopicList girlTopicList = (GirlTopicList) object;
        super.onPostExecute(girlTopicList);
        GirlTopicListActivity.d(this.a).setVisibility(8);
        GirlTopicListActivity.o(this.a).setVisibility(8);
        GirlTopicListActivity.p(this.a).setVisibility(8);
        GirlTopicListActivity.l(this.a).n();
        if (this.isCancelled()) return;
        if (girlTopicList != null && girlTopicList.getPosts() != null) {
            GirlTopicSummary[] arrgirlTopicSummary = girlTopicList.getPosts();
            int n = arrgirlTopicSummary.length;
            if (n > 0) {
                List<GirlTopicSummary> list = Arrays.asList(arrgirlTopicSummary);
                GirlTopicListActivity.j(this.a).addAll(list);
                GirlTopicListActivity.q(this.a).a((Collection) GirlTopicListActivity.j(this.a));
                if (n < 20) {
                    GirlTopicListActivity.l(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                GirlTopicListActivity.l(this.a).setOnLastItemVisibleListener(GirlTopicListActivity.r(this.a));
                return;
            }
            GirlTopicListActivity.l(this.a).setOnLastItemVisibleListener(null);
            return;
        }
        e.a((Activity) this.a, (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
