package com.clilystudio.netbook.ui.ugcbook;

import android.widget.Filter;
import android.widget.Filter$FilterResults;

import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.widget.SearchFixListView;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class x extends Filter {

    private UGCGuideAddBookActivity$SearchPromptAdapter a;

    x(UGCGuideAddBookActivity$SearchPromptAdapter SearchPromptAdapter1, byte byte2) {
        this(SearchPromptAdapter1);
    }

    private x(UGCGuideAddBookActivity$SearchPromptAdapter SearchPromptAdapter1) {
        a = SearchPromptAdapter1;
    }

    protected final Filter$FilterResults performFiltering(CharSequence CharSequence1) {
        Object Object2 = UGCGuideAddBookActivity.a(a.a).getText().toString();
        Object Object3 = new ArrayList();
        Filter$FilterResults FilterResults6;

        ((List) Object3).add(Object2);
        ((List) Object3).add(CharSequence1.toString());
        if (!android.text.TextUtils.isEmpty((CharSequence) Object2)) {
            AutoCompleteRoot AutoCompleteRoot8;

            try {
                AutoCompleteRoot AutoCompleteRoot11;

                com.clilystudio.netbook.api.b.a();
                AutoCompleteRoot11 = com.clilystudio.netbook.api.b.b().N((String) Object2);
            } catch (Exception Exception7) {
                Exception7.printStackTrace();
                AutoCompleteRoot8 = null;
            }
            if (AutoCompleteRoot8 != null && AutoCompleteRoot8.getKeywords() != null)
                ((List) Object3).addAll(0, (Collection) AutoCompleteRoot8.getKeywords());
        }
        FilterResults6 = new Filter$FilterResults();
        FilterResults6.values = Object3;
        FilterResults6.count = ((List) Object3).size();
        return FilterResults6;
    }

    protected final void publishResults(CharSequence CharSequence1, Filter$FilterResults FilterResults2) {
        List List3 = (List) FilterResults2.values;

        if (List3 != null) {
            int int4 = List3.size();

            if (int4 >= 2) {
                String String5 = (String) List3.get(int4 - 2);
                Object Object6;
                SearchFixListView SearchFixListView8;
                int int9;

                if (int4 > 2 && !com.clilystudio.netbook.ui.ugcbook.UGCGuideAddBookActivity.b(a.a, String5))
                    Object6 = List3.subList(0, int4 - 2);
                else
                    Object6 = new ArrayList();
                UGCGuideAddBookActivity$SearchPromptAdapter.a(a, (List) Object6);
                if (UGCGuideAddBookActivity$SearchPromptAdapter.a(a).isEmpty())
                    a.notifyDataSetInvalidated();
                else
                    a.notifyDataSetChanged();
                SearchFixListView8 = UGCGuideAddBookActivity.f(a.a);
                if (UGCGuideAddBookActivity$SearchPromptAdapter.a(a).isEmpty() || !com.clilystudio.netbook.ui.ugcbook.UGCGuideAddBookActivity.e(a.a))
                    int9 = 8;
                else
                    int9 = 0;
                SearchFixListView8.setVisibility(int9);
                return;
            }
        }
    }
}
