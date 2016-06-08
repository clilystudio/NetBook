package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils;
import android.widget.Filter;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.widget.SearchFixListView;

import java.util.ArrayList;
import java.util.List;

final class x extends Filter {
    private x(UGCGuideAddBookActivity.SearchPromptAdapter paramSearchPromptAdapter) {
    }

    protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence) {
        String str = UGCGuideAddBookActivity.a(this.a.a).getText().toString();
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(str);
        localArrayList.add(paramCharSequence.toString());
        if (!TextUtils.isEmpty(str)) ;
        try {
            b.a();
            AutoCompleteRoot localAutoCompleteRoot2 = b.b().N(str);
            localAutoCompleteRoot1 = localAutoCompleteRoot2;
            if ((localAutoCompleteRoot1 != null) && (localAutoCompleteRoot1.getKeywords() != null))
                localArrayList.addAll(0, localAutoCompleteRoot1.getKeywords());
            Filter.FilterResults localFilterResults = new Filter.FilterResults();
            localFilterResults.values = localArrayList;
            localFilterResults.count = localArrayList.size();
            return localFilterResults;
        } catch (Exception localException) {
            while (true) {
                localException.printStackTrace();
                AutoCompleteRoot localAutoCompleteRoot1 = null;
            }
        }
    }

    protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults) {
        List localList = (List) paramFilterResults.values;
        if (localList == null) ;
        int i;
        do {
            return;
            i = localList.size();
        }
        while (i < 2);
        String str = (String) localList.get(i - 2);
        Object localObject;
        label108:
        SearchFixListView localSearchFixListView;
        if ((i > 2) && (!UGCGuideAddBookActivity.b(this.a.a, str))) {
            localObject = localList.subList(0, i - 2);
            UGCGuideAddBookActivity.SearchPromptAdapter.a(this.a, (List) localObject);
            if (!UGCGuideAddBookActivity.SearchPromptAdapter.a(this.a).isEmpty())
                break label172;
            this.a.notifyDataSetInvalidated();
            localSearchFixListView = UGCGuideAddBookActivity.f(this.a.a);
            if ((!UGCGuideAddBookActivity.SearchPromptAdapter.a(this.a).isEmpty()) && (UGCGuideAddBookActivity.e(this.a.a)))
                break label182;
        }
        label172:
        label182:
        for (int j = 8; ; j = 0) {
            localSearchFixListView.setVisibility(j);
            return;
            localObject = new ArrayList();
            break;
            this.a.notifyDataSetChanged();
            break label108;
        }
    }
}

