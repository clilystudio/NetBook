package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils;
import android.widget.Filter;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.widget.SearchFixListView;

import java.util.ArrayList;
import java.util.List;

final class x
        extends Filter {
    private /* synthetic */ UGCGuideAddBookActivity$SearchPromptAdapter a;

    private x(UGCGuideAddBookActivity$SearchPromptAdapter searchPromptAdapter) {
        this.a = searchPromptAdapter;
    }

    /* synthetic */ x(UGCGuideAddBookActivity$SearchPromptAdapter searchPromptAdapter, byte by) {
        this(searchPromptAdapter);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
        String string = UGCGuideAddBookActivity.a(this.a.a).getText().toString();
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string);
        arrayList.add(charSequence.toString());
        if (!TextUtils.isEmpty(string)) {
            AutoCompleteRoot autoCompleteRoot;
            try {
                AutoCompleteRoot autoCompleteRoot2;
                b.a();
                autoCompleteRoot = autoCompleteRoot2 = b.b().N(string);
            } catch (Exception var7_7) {
                var7_7.printStackTrace();
                autoCompleteRoot = null;
            }
            if (autoCompleteRoot != null && autoCompleteRoot.getKeywords() != null) {
                arrayList.addAll(0, autoCompleteRoot.getKeywords());
            }
        }
        Filter.FilterResults filterResults = new Filter.FilterResults();
        filterResults.values = arrayList;
        filterResults.count = arrayList.size();
        return filterResults;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        void var6_7;
        int n;
        List list = (List) filterResults.values;
        if (list == null || (n = list.size()) < 2) {
            return;
        }
        String string = (String) list.get(n - 2);
        if (n > 2 && !UGCGuideAddBookActivity.b(this.a.a, string)) {
            List list2 = list.subList(0, n - 2);
        } else {
            ArrayList arrayList = new ArrayList();
        }
        UGCGuideAddBookActivity$SearchPromptAdapter.a(this.a, (List) var6_7);
        if (UGCGuideAddBookActivity$SearchPromptAdapter.a(this.a).isEmpty()) {
            this.a.notifyDataSetInvalidated();
        } else {
            this.a.notifyDataSetChanged();
        }
        SearchFixListView searchFixListView = UGCGuideAddBookActivity.f(this.a.a);
        int n2 = UGCGuideAddBookActivity$SearchPromptAdapter.a(this.a).isEmpty() || !UGCGuideAddBookActivity.e(this.a.a) ? 8 : 0;
        searchFixListView.setVisibility(n2);
    }
}
