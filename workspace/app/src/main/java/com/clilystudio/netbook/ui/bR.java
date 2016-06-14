package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.os.Handler;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.util.e;

import java.util.List;
import java.util.Map;

class bR extends com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> {
    final /* synthetic */ SearchActivity a;

    private bR(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /* synthetic */ bR(SearchActivity searchActivity, byte by) {
        this(searchActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<BookSummary> a(String... arrstring) {
        block5:
        {
            if (SearchActivity.i(this.a) != 1) break block5;
            List<BookSummary> list = b.b().n(arrstring[0]);
            SearchPromRoot searchPromRoot = b.b().q(arrstring[0]);
            if (searchPromRoot == null) return list;
            if (searchPromRoot.getProm() == null) return list;
            list.add(0, searchPromRoot.getProm());
            return list;
        }
        SearchResultRoot searchResultRoot = b.b().p(arrstring[0]);
        if (searchResultRoot == null) return null;
        try {
            return searchResultRoot.getBooks();
        } catch (Exception var2_6) {
            var2_6.printStackTrace();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void a(List<BookSummary> list) {
        String string;
        super.onPostExecute(list);
        SearchActivity.a(this.a, true);
        if (list == null) {
            SearchActivity.a(this.a, 2);
            e.a((Activity) this.a, (int) 2131034478);
            return;
        }
        SearchActivity.b(this.a).a(list);
        new Handler().post(new bS(this));
        if (list.size() > 0) {
            SearchActivity.a(this.a, 1);
            string = "1";
        } else {
            SearchActivity.a(this.a, 3);
            string = "0";
        }
        SearchActivity searchActivity = this.a;
        String string2 = SearchActivity.j(this.a);
        Map<String, String> map = a.p(this.a);
        map.put("emp", string);
        com.a.a.a.c(searchActivity, string2, map);
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
        SearchActivity.a(this.a, false);
    }
}
