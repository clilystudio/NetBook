package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

import java.util.ArrayList;
import java.util.List;

public final class UGCGuideAddBookActivity$SearchPromptAdapter extends BaseAdapter implements AdapterView.OnItemClickListener,
        Filterable {
    final /* synthetic */ UGCGuideAddBookActivity a;
    private List<String> b;
    private x c;

    public UGCGuideAddBookActivity$SearchPromptAdapter(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.a = uGCGuideAddBookActivity;
        this.b = new ArrayList<String>();
    }

    static /* synthetic */ List a(UGCGuideAddBookActivity$SearchPromptAdapter uGCGuideAddBookActivity$SearchPromptAdapter) {
        return uGCGuideAddBookActivity$SearchPromptAdapter.b;
    }

    static /* synthetic */ List a(UGCGuideAddBookActivity$SearchPromptAdapter uGCGuideAddBookActivity$SearchPromptAdapter, List list) {
        uGCGuideAddBookActivity$SearchPromptAdapter.b = list;
        return list;
    }

    @Override
    public final int getCount() {
        return this.b.size();
    }

    @Override
    public final Filter getFilter() {
        if (this.c == null) {
            this.c = new x(this, 0);
        }
        return this.c;
    }

    @Override
    public final Object getItem(int n) {
        if (n >= 0 && n < this.b.size()) {
            return this.b.get(n);
        }
        return null;
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2 = this.a.getLayoutInflater().inflate(2130903303, viewGroup, false);
        UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder uGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder = new UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder(this, view2);
        if (n >= 0 && n < this.b.size()) {
            uGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder.label.setText(this.b.get(n));
        }
        return view2;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCGuideAddBookActivity.f(this.a).setVisibility(8);
        if (n >= 0 && n < this.b.size()) {
            String string = this.b.get(n);
            UGCGuideAddBookActivity.a(this.a).setTextByCode(string);
            UGCGuideAddBookActivity.g(this.a);
            UGCGuideAddBookActivity.a(this.a, false);
        }
    }
}
