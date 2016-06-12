package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

import java.util.ArrayList;
import java.util.List;

public final class UGCGuideAddBookActivity$SearchPromptAdapter extends BaseAdapter implements AdapterView$OnItemClickListener, Filterable {

    UGCGuideAddBookActivity a;     // final access specifier removed
    private List b;
    private x c;
    public UGCGuideAddBookActivity$SearchPromptAdapter(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        a = UGCGuideAddBookActivity1;
        b = (List) new ArrayList();
    }

    static List a(UGCGuideAddBookActivity$SearchPromptAdapter SearchPromptAdapter1) {
        return SearchPromptAdapter1.b;
    }

    static List a(UGCGuideAddBookActivity$SearchPromptAdapter SearchPromptAdapter1, List List2) {
        SearchPromptAdapter1.b = List2;
        return List2;
    }

    public final int getCount() {
        return b.size();
    }

    public final Filter getFilter() {
        if (c == null)
            c = new x(this, (byte) 0);
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
        UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder ViewHolder5 = new UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder(this, View4);

        if (int1 >= 0 && int1 < b.size())
            ViewHolder5.label.setText((CharSequence) b.get(int1));
        return View4;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        UGCGuideAddBookActivity.f(a).setVisibility(8);
        if (int3 >= 0 && int3 < b.size()) {
            String String6 = (String) b.get(int3);

            UGCGuideAddBookActivity.a(a).setTextByCode(String6);
            UGCGuideAddBookActivity.g(a);
            UGCGuideAddBookActivity.a(a, false);
        }
    }
}
