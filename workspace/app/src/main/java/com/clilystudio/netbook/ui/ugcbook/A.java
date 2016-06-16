package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.os.Handler;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.util.e;

import java.util.List;

class A extends com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> {
    final /* synthetic */ UGCGuideAddBookActivity a;

    private A(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.a = uGCGuideAddBookActivity;
    }

    /* synthetic */ A(UGCGuideAddBookActivity uGCGuideAddBookActivity, byte by) {
        this(uGCGuideAddBookActivity);
    }

    private /* varargs */ List<BookSummary> a(String... arrstring) {
        List<BookSummary> list;
        block3:
        {
            SearchPromRoot searchPromRoot;
            try {
                list = b.b().n(arrstring[0]);
                searchPromRoot = b.b().q(arrstring[0]);
                if (searchPromRoot == null) break block3;
            } catch (Exception var2_4) {
                var2_4.printStackTrace();
                return null;
            }
            if (searchPromRoot.getProm() == null) break block3;
            list.add(0, searchPromRoot.getProm());
        }
        return list;
    }

    protected void a(List<BookSummary> list) {
        super.onPostExecute(list);
        UGCGuideAddBookActivity.c(this.a, true);
        if (list != null) {
            UGCGuideAddBookActivity.c(this.a).a(list);
            new Handler().post(new B(this));
            if (list.size() > 0) {
                UGCGuideAddBookActivity.b(this.a, 1);
                return;
            }
            UGCGuideAddBookActivity.b(this.a, 3);
            return;
        }
        UGCGuideAddBookActivity.b(this.a, 2);
        e.a((Activity) this.a, (int) R.string.search_failed);
    }

    @Override
    protected /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected /* synthetic */ void onPostExecute(Object object) {
        this.a((List) object);
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
        UGCGuideAddBookActivity.c(this.a, false);
    }
}
