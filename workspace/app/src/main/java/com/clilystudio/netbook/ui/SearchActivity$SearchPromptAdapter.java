package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

import java.util.ArrayList;
import java.util.List;

public final class SearchActivity$SearchPromptAdapter extends BaseAdapter implements AdapterView$OnItemClickListener, Filterable {

    SearchActivity a;     // final access specifier removed
    private List b;
    private bQ c;
    public SearchActivity$SearchPromptAdapter(SearchActivity SearchActivity1) {
        a = SearchActivity1;
        b = (List) new ArrayList();
    }

    static List a(SearchActivity$SearchPromptAdapter SearchPromptAdapter1) {
        return SearchPromptAdapter1.b;
    }

    static List a(SearchActivity$SearchPromptAdapter SearchPromptAdapter1, List List2) {
        SearchPromptAdapter1.b = List2;
        return List2;
    }

    public final int getCount() {
        return b.size();
    }

    public final Filter getFilter() {
        if (c == null)
            c = new bQ(this, (byte) 0);
        return (Filter) c;
    }

    public final Object getItem(int int1) {
        if (int1 >= 0 && int1 < b.size())
            return b.get(int1);
        else
            return null;
    }

    public final long getItemId(int int1) {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        View View4 = a.getLayoutInflater().inflate(2130903303, ViewGroup3, false);
        SearchActivity$SearchPromptAdapter$ViewHolder ViewHolder5 = new SearchActivity$SearchPromptAdapter$ViewHolder(this, View4);

        if (int1 >= 0 && int1 < b.size())
            ViewHolder5.label.setText((CharSequence) b.get(int1));
        return View4;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        SearchActivity.k(a).setVisibility(8);
        if (int3 >= 0 && int3 < b.size()) {
            String String6 = (String) b.get(int3);

            SearchActivity.f(a).setTextByCode(String6);
            SearchActivity.b(a, true);
        }
    }
}
