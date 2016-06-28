package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;
import com.clilystudio.netbook.widget.ax;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import butterknife.ButterKnife;

public class UGCGuideAddBookActivity extends BaseActivity implements View.OnClickListener {
    private InputMethodManager a;
    private String b;
    private SearchEditText c;
    private View e;
    private View f;
    private ListView g;
    private SearchFixListView h;
    private View i;
    private View j;
    private W<BookSummary> k;
    private View l;
    private String m;
    private boolean n;

    static /* synthetic */ SearchEditText a(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return uGCGuideAddBookActivity.c;
    }

    static /* synthetic */ String a(UGCGuideAddBookActivity uGCGuideAddBookActivity, String string) {
        uGCGuideAddBookActivity.m = string;
        return string;
    }

    static /* synthetic */ void a(UGCGuideAddBookActivity uGCGuideAddBookActivity, int n) {
        if (n >= 0 && n < uGCGuideAddBookActivity.k.getCount()) {
            BookSummary bookSummary = (BookSummary) uGCGuideAddBookActivity.k.getItem(n);
            UGCGuideAddBookActivity.e().addBook(bookSummary);
            bookSummary.setSelected(true);
        }
    }

    static /* synthetic */ boolean a(UGCGuideAddBookActivity uGCGuideAddBookActivity, boolean bl) {
        uGCGuideAddBookActivity.n = bl;
        return bl;
    }

    static /* synthetic */ UGCNewCollection b(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return UGCGuideAddBookActivity.e();
    }

    static /* synthetic */ void b(UGCGuideAddBookActivity uGCGuideAddBookActivity, int n) {
        uGCGuideAddBookActivity.a(n);
    }

    static /* synthetic */ void b(UGCGuideAddBookActivity uGCGuideAddBookActivity, boolean bl) {
        uGCGuideAddBookActivity.a(true);
    }

    static /* synthetic */ boolean b(UGCGuideAddBookActivity uGCGuideAddBookActivity, String string) {
        if (!uGCGuideAddBookActivity.c.getText().toString().equals(string) && !string.equals(uGCGuideAddBookActivity.m)) {
            return true;
        }
        return false;
    }

    static /* synthetic */ W<BookSummary> c(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return uGCGuideAddBookActivity.k;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void c(UGCGuideAddBookActivity uGCGuideAddBookActivity, boolean bl) {
        uGCGuideAddBookActivity.e.setEnabled(bl);
        uGCGuideAddBookActivity.f.setEnabled(bl);
        View view = uGCGuideAddBookActivity.f;
        int n = bl && uGCGuideAddBookActivity.c.isFocused() ? 0 : 4;
        view.setVisibility(n);
    }

    static /* synthetic */ ListView d(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return uGCGuideAddBookActivity.g;
    }

    static /* synthetic */ boolean e(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return uGCGuideAddBookActivity.n;
    }

    static /* synthetic */ SearchFixListView f(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        return uGCGuideAddBookActivity.h;
    }

    static /* synthetic */ void g(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        uGCGuideAddBookActivity.a(false);
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.i.setVisibility(View.GONE);
                this.j.setVisibility(View.GONE);
                this.g.setVisibility(View.VISIBLE);
                return;
            }
            case 0: {
                this.i.setVisibility(View.VISIBLE);
                this.j.setVisibility(View.GONE);
                this.g.setVisibility(View.GONE);
                return;
            }
            case 3: {
                this.i.setVisibility(View.GONE);
                this.j.setVisibility(View.VISIBLE);
                this.g.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.i.setVisibility(View.GONE);
        this.j.setVisibility(View.GONE);
        this.g.setVisibility(View.GONE);
    }

    private void a(boolean bl) {
        this.h.setVisibility(View.GONE);
        this.b = this.c.getText().toString().trim();
        this.f();
        if (a.t(this)) {
            this.a(0);
            if (bl) {
                com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> w2 = new com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>>() {

                    @Override
                    protected List<BookSummary> doInBackground(String... params) {
                        List<BookSummary> list = com.clilystudio.netbook.api.b.b().n(params[0]);
                        SearchPromRoot searchPromRoot = com.clilystudio.netbook.api.b.b().q(params[0]);
                        if (searchPromRoot != null && searchPromRoot.getProm() != null) {
                            list.add(0, searchPromRoot.getProm());
                        }
                        return list;
                    }

                    @Override
                    protected void onPreExecute() {
                        super.onPreExecute();
                        UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this, UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this).getText().toString());
                    }

                    @Override
                    protected void onPostExecute(List<BookSummary> bookSummaries) {
                        super.onPostExecute(bookSummaries);
                        UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this, true);
                        if (bookSummaries != null) {
                            UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this).a(bookSummaries);
                            new Handler().post(new Runnable() {
                                @Override
                                public void run() {
                                    if (UGCGuideAddBookActivity.d(UGCGuideAddBookActivity.this) != null) {
                                        UGCGuideAddBookActivity.d(UGCGuideAddBookActivity.this).setSelection(0);
                                    }
                                }
                            });
                            if (bookSummaries.size() > 0) {
                                UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 1);
                                return;
                            }
                            UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 3);
                            return;
                        }
                        UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 2);
                        com.clilystudio.netbook.util.e.a((Activity) UGCGuideAddBookActivity.this, (int) R.string.search_failed);
                    }
                };
                w2.b(this.b);
                return;
            }
            com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> a2 = new com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>>() {

                @Override
                protected List<BookSummary> doInBackground(String... params) {
                    List<BookSummary> list = com.clilystudio.netbook.api.b.b().n(params[0]);
                    SearchPromRoot searchPromRoot = com.clilystudio.netbook.api.b.b().q(params[0]);
                    if (searchPromRoot != null && searchPromRoot.getProm() != null) {
                        list.add(0, searchPromRoot.getProm());
                    }
                    return list;
                }

                @Override
                protected void onPreExecute() {
                    super.onPreExecute();
                    UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this, false);
                }

                @Override
                protected void onPostExecute(List<BookSummary> bookSummaries) {
                    super.onPostExecute(bookSummaries);
                    UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this, true);
                    if (bookSummaries != null) {
                        UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this).a(bookSummaries);
                        new Handler().post(new Runnable() {
                            @Override
                            public void run() {
                                if (UGCGuideAddBookActivity.d(UGCGuideAddBookActivity.this) != null) {
                                    UGCGuideAddBookActivity.d(UGCGuideAddBookActivity.this).setSelection(0);
                                }
                            }
                        });
                        if (bookSummaries.size() > 0) {
                            UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 1);
                            return;
                        }
                        UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 3);
                        return;
                    }
                    UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, 2);
                    com.clilystudio.netbook.util.e.a((Activity) UGCGuideAddBookActivity.this, (int) R.string.search_failed);
                }
            };
            String[] arrstring = new String[]{this.b};
            a2.b(arrstring);
            return;
        }
        e.a((Activity) this, (int) R.string.network_unconnected);
    }

    private void b() {
        this.l.setVisibility(View.VISIBLE);
        this.getWindow().setSoftInputMode(21);
        this.c.requestFocus();
    }

    private void f() {
        this.l.setVisibility(View.GONE);
        this.c.clearFocus();
        if (this.a == null) {
            this.a = (InputMethodManager) this.getSystemService("input_method");
        }
        this.a.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
        this.getWindow().setSoftInputMode(2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = this.h.getVisibility() == 0;
        if (bl) {
            this.h.setVisibility(View.GONE);
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.search_input_search: {
                this.a(true);
                this.f();
                this.n = false;
                return;
            }
            case R.id.search_input_clean: {
                this.b = "";
                this.c.setTextByCode(this.b);
                this.b();
                return;
            }
            case R.id.back:
        }
        this.f();
        this.finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_search);
        ButterKnife.inject(this);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = layoutInflater.inflate(R.layout.ab_search, null, false);
        view.findViewById(R.id.back).setOnClickListener(this);
        this.setCustomActionBar(view);
        this.findViewById(R.id.select_word_layout).setVisibility(View.GONE);
        this.n = true;
        final SearchPromptAdapter searchPromptAdapter = new SearchPromptAdapter(this);
        this.h = (SearchFixListView) this.findViewById(R.id.search_prompt_list);
        this.h.setAdapter(searchPromptAdapter);
        this.h.setOnItemClickListener(searchPromptAdapter);
        this.c = (SearchEditText) view.findViewById(R.id.search_input_edit);
        this.c.setOnUserInputListener(new ax() {
            @Override
            public void a() {
                UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this, true);
                String string = String.valueOf(Calendar.getInstance().getTimeInMillis());
                searchPromptAdapter.getFilter().filter(string);
            }
        });
        this.e = view.findViewById(R.id.search_input_search);
        this.f = view.findViewById(R.id.search_input_clean);
        this.i = this.findViewById(R.id.pb_loading);
        this.j = this.findViewById(R.id.search_empty_layout);
        this.l = this.findViewById(R.id.focusable);
        this.findViewById(R.id.search_empty_add).setVisibility(View.GONE);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.e.setEnabled(false);
        this.g = (ListView) this.findViewById(R.id.search_list);
        this.k = new W<BookSummary>(layoutInflater, R.layout.ugcbook_add_search_result) {

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                List<BookSummary> books =  UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this).getBooks();
                if (books != null) {
                    Iterator<BookSummary> iterator = books.iterator();
                    while (iterator.hasNext()) {
                        if (!iterator.next().getId().equals(bookSummary.getId())) continue;
                        UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this, var1);
                    }
                }
                ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.a(1, bookSummary.getTitle());
                Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
                this.a(2, String.format("%d人在追  |  %.1f%%读者留存  |  %s著", arrobject));
                this.a(3, TextUtils.isEmpty(bookSummary.getPromLink()));
                if (bookSummary.isSelected()) {
                    this.a(4, true);
                    this.a(5, false);
                    return;
                }
                this.a(4, false);
                this.a(5, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.prom_label, R.id.item_add_btn, R.id.item_add_text};
            }

            @Override
            public View getView(final int n, View view, ViewGroup viewGroup) {
                View view2 = super.getView(n, view, viewGroup);
                view2.findViewById(R.id.item_add_btn).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this, n);
                        notifyDataSetChanged();
                    }
                });
                this.a(n, view2, this.getItem(n));
                return view2;
            }
        };
        this.g.setAdapter((ListAdapter) ((Object) this.k));
        if (bundle != null) {
            this.b = bundle.getString("saved_keyword");
            if (this.b != null) {
                this.c.setTextByCode(this.b);
            }
        }
        this.c.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                UGCGuideAddBookActivity.b(UGCGuideAddBookActivity.this, true);
                return true;
            }
        });
        this.c.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this, null);
            }

            @Override
            public void afterTextChanged(Editable editable) {
                boolean bl = !com.clilystudio.netbook.hpay100.a.a.Q(editable.toString());
                UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this, bl);
            }
        });
        this.c.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                boolean bl2 = !com.clilystudio.netbook.hpay100.a.a.Q(UGCGuideAddBookActivity.a(UGCGuideAddBookActivity.this).getText().toString());
                UGCGuideAddBookActivity.c(UGCGuideAddBookActivity.this, bl2);
            }
        });
        this.b();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.b != null) {
            bundle.putString("saved_keyword", this.b);
        }
    }

    public final class SearchPromptAdapter extends BaseAdapter implements AdapterView.OnItemClickListener,
            Filterable {
        final /* synthetic */ UGCGuideAddBookActivity a;
        private List<String> b;
        private Filter c;

        public SearchPromptAdapter(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
            this.a = uGCGuideAddBookActivity;
            this.b = new ArrayList<String>();
        }

        static /* synthetic */ List a(SearchPromptAdapter uGCGuideAddBookActivity$SearchPromptAdapter) {
            return uGCGuideAddBookActivity$SearchPromptAdapter.b;
        }

        static /* synthetic */ List a(SearchPromptAdapter uGCGuideAddBookActivity$SearchPromptAdapter, List list) {
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
                this.c = new Filter() {

                    @Override
                    protected FilterResults performFiltering(CharSequence constraint) {
                        String string = UGCGuideAddBookActivity.a(this.a.a).getText().toString();
                        ArrayList<String> arrayList = new ArrayList<String>();
                        arrayList.add(string);
                        arrayList.add(constraint.toString());
                        if (!TextUtils.isEmpty(string)) {
                            AutoCompleteRoot autoCompleteRoot;
                            try {
                                AutoCompleteRoot autoCompleteRoot2;
                                com.clilystudio.netbook.api.b.a();
                                autoCompleteRoot = autoCompleteRoot2 = com.clilystudio.netbook.api.b.b().N(string);
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

                    @Override
                    protected void publishResults(CharSequence constraint, FilterResults results) {
                        int n;
                        List list = (List) results.values;
                        if (list == null || (n = list.size()) < 2) {
                            return;
                        }
                        String string = (String) list.get(n - 2);
                        List var6_7;
                        if (n > 2 && !UGCGuideAddBookActivity.b(SearchPromptAdapter.this.a, string)) {
                            var6_7 = list.subList(0, n - 2);
                        } else {
                            var6_7 = new ArrayList();
                        }
                        UGCGuideAddBookActivity.SearchPromptAdapter.a(SearchPromptAdapter.this, var6_7);
                        if (UGCGuideAddBookActivity.SearchPromptAdapter.a(SearchPromptAdapter.this).isEmpty()) {
                            SearchPromptAdapter.this.notifyDataSetInvalidated();
                        } else {
                            SearchPromptAdapter.this.notifyDataSetChanged();
                        }
                        SearchFixListView searchFixListView = UGCGuideAddBookActivity.f(SearchPromptAdapter.this.a);
                        searchFixListView.setVisibility(UGCGuideAddBookActivity.SearchPromptAdapter.a(SearchPromptAdapter.this).isEmpty() || !UGCGuideAddBookActivity.e(SearchPromptAdapter.this.a) ? View.GONE : View.VISIBLE);
                    }
                };
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
            View view2 = this.a.getLayoutInflater().inflate(R.layout.list_item_search_prompt, viewGroup, false);
            SearchPromptAdapter$ViewHolder uGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder = new SearchPromptAdapter$ViewHolder(this, view2);
            if (n >= 0 && n < this.b.size()) {
                uGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder.label.setText(this.b.get(n));
            }
            return view2;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
            UGCGuideAddBookActivity.f(this.a).setVisibility(View.GONE);
            if (n >= 0 && n < this.b.size()) {
                String string = this.b.get(n);
                UGCGuideAddBookActivity.a(this.a).setTextByCode(string);
                UGCGuideAddBookActivity.g(this.a);
                UGCGuideAddBookActivity.a(this.a, false);
            }
        }

        class SearchPromptAdapter$ViewHolder {
            TextView label;

            SearchPromptAdapter$ViewHolder(UGCGuideAddBookActivity.SearchPromptAdapter searchPromptAdapter, View view) {
                this.label = (TextView) view.findViewById(R.id.search_prompt_list_item);
            }
        }
    }
}
