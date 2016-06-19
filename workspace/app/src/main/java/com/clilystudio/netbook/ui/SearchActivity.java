package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.widget.*;
import com.clilystudio.netbook.widget.ax;
import com.clilystudio.netbook.widget.i;
import com.clilystudio.netbook.widget.j;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import butterknife.ButterKnife;

public class SearchActivity extends BaseActivity implements View.OnClickListener {
    private InputMethodManager a;
    private String b;
    private int c;
    private SearchEditText e;
    private View f;
    private View g;
    private ListView h;
    private SearchFixListView i;
    private View j;
    private View k;
    private E l;
    private View m;
    private View n;
    private String o;
    private boolean p = false;
    private RelativeLayout q;
    private AutoFlowView r;
    private TextView s;
    private View t;
    private View u;
    private ListView v;
    private SearchHistoryAdapter w;
    private List<String> x;

    public static Intent a(Context context) {
        return SearchActivity.a(context, 1);
    }

    public static Intent a(Context context, int n) {
        return new d().a(context, SearchActivity.class).a("search_mode", n).a();
    }

    static /* synthetic */ ListView a(SearchActivity searchActivity) {
        return searchActivity.h;
    }

    static /* synthetic */ void a(SearchActivity searchActivity, int n) {
        searchActivity.a(n);
    }

    static /* synthetic */ void a(SearchActivity searchActivity, String string) {
        searchActivity.t.setVisibility(View.GONE);
        searchActivity.e.setTextByCode(string);
        searchActivity.a(true, false);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(SearchActivity searchActivity, boolean bl) {
        searchActivity.f.setEnabled(bl);
        searchActivity.g.setEnabled(bl);
        View view = searchActivity.g;
        int n = bl && searchActivity.e.isFocused() ? 0 : 4;
        view.setVisibility(n);
        if (searchActivity.t == null) return;
        if (bl) {
            searchActivity.t.setVisibility(View.GONE);
            return;
        }
        if (!searchActivity.p) {
            searchActivity.t.setVisibility(View.VISIBLE);
        }
        searchActivity.i.setVisibility(View.GONE);
    }

    static /* synthetic */ void a(SearchActivity searchActivity, boolean bl, boolean bl2) {
        searchActivity.a(true, true);
    }

    static /* synthetic */ E b(SearchActivity searchActivity) {
        return searchActivity.l;
    }

    static /* synthetic */ String b(SearchActivity searchActivity, String string) {
        searchActivity.o = string;
        return string;
    }

    static /* synthetic */ void b(SearchActivity searchActivity, boolean bl) {
        searchActivity.a(true, false);
    }

    static /* synthetic */ void c(SearchActivity searchActivity) {
        searchActivity.g();
    }

    static /* synthetic */ boolean c(SearchActivity searchActivity, String string) {
        if (!searchActivity.e.getText().toString().equals(string) && !string.equals(searchActivity.o)) {
            return true;
        }
        return false;
    }

    static /* synthetic */ void d(SearchActivity searchActivity) {
        searchActivity.x.clear();
        searchActivity.w.notifyDataSetChanged();
        a.a(searchActivity.x, c.e, "search_history.txt");
        searchActivity.a(false);
    }

    static /* synthetic */ AutoFlowView e(SearchActivity searchActivity) {
        return searchActivity.r;
    }

    static /* synthetic */ SearchEditText f(SearchActivity searchActivity) {
        return searchActivity.e;
    }

    static /* synthetic */ RelativeLayout g(SearchActivity searchActivity) {
        return searchActivity.q;
    }

    static /* synthetic */ TextView h(SearchActivity searchActivity) {
        return searchActivity.s;
    }

    static /* synthetic */ int i(SearchActivity searchActivity) {
        return searchActivity.c;
    }

    static /* synthetic */ String j(SearchActivity searchActivity) {
        return searchActivity.b;
    }

    static /* synthetic */ SearchFixListView k(SearchActivity searchActivity) {
        return searchActivity.i;
    }

    static /* synthetic */ List l(SearchActivity searchActivity) {
        return searchActivity.x;
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.j.setVisibility(View.GONE);
                this.k.setVisibility(View.GONE);
                this.h.setVisibility(View.VISIBLE);
                return;
            }
            case 0: {
                this.j.setVisibility(View.VISIBLE);
                this.k.setVisibility(View.GONE);
                this.h.setVisibility(View.GONE);
                return;
            }
            case 3: {
                this.j.setVisibility(View.GONE);
                this.k.setVisibility(View.VISIBLE);
                this.h.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.j.setVisibility(View.GONE);
        this.k.setVisibility(View.GONE);
        this.h.setVisibility(View.GONE);
    }

    private void a(boolean bl) {
        this.u.setClickable(bl);
        this.u.setEnabled(bl);
        this.u.setFocusable(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl, boolean bl2) {
        this.i.setVisibility(View.GONE);
        String string = this.b = this.e.getText().toString().trim();
        int n = -1;
        switch (string.hashCode()) {
            default: {
                break;
            }
            case 229825679: {
                if (!string.equals("//openwebview")) break;
                n = 0;
            }
        }
        Intent intent = null;
        switch (n) {
            case 0: {
                intent = new Intent(this, SecretOpWebActivity.class);
            }
        }
        if (this.b != null && intent != null) {
            this.startActivity(intent);
            return;
        } else {
            this.p = true;
            String string2 = this.b;
            if (this.x.contains(string2)) {
                this.x.remove(string2);
            }
            if (this.x.size() >= 6) {
                this.x.remove(-1 + this.x.size());
            }
            this.x.add(0, string2);
            this.w.notifyDataSetChanged();
            a.a(this.x, c.e, "search_history.txt");
            this.a(true);
            this.g();
            if (a.t(this)) {
                this.a(0);
                if (bl2) {
                    bP bP2 = new bP(this, 0);
                    String[] arrstring = new String[]{this.b};
                    bP2.b(arrstring);
                } else {
                    bR bR2 = new bR(this, 0);
                    String[] arrstring = new String[]{this.b};
                    bR2.b(arrstring);
                }
            } else {
                e.a((Activity) this, (int) R.string.network_unconnected);
            }
            if (!bl || this.m == null) return;
            {
                this.m.setVisibility(View.VISIBLE);
                return;
            }
        }
    }

    private void b() {
        Intent intent = new Intent(this, CustomSearchActivity.class);
        intent.putExtra("AddBookKey", this.b);
        this.startActivity(intent);
    }

    private void f() {
        this.n.setVisibility(View.VISIBLE);
        this.getWindow().setSoftInputMode(21);
        this.e.requestFocus();
    }

    private void g() {
        this.n.setVisibility(View.GONE);
        this.e.clearFocus();
        if (this.a == null) {
            this.a = (InputMethodManager) this.getSystemService("input_method");
        }
        this.a.hideSoftInputFromWindow(this.e.getWindowToken(), 0);
        this.getWindow().setSoftInputMode(2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = this.i.getVisibility() == 0;
        if (bl) {
            this.i.setVisibility(View.GONE);
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
                this.a(true, true);
                this.g();
                return;
            }
            case R.id.search_input_clean: {
                this.b = "";
                this.e.setTextByCode(this.b);
                this.f();
                return;
            }
            case R.id.advance_search_container: {
                this.b();
                return;
            }
            case R.id.search_empty_add: {
                this.b();
                return;
            }
            case R.id.back:
        }
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_search);
        ButterKnife.inject(this);
        Intent intent = this.getIntent();
        this.c = intent.getIntExtra("search_mode", 1);
        if (this.c == 2) {
            this.b = intent.getStringExtra("keyword");
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = layoutInflater.inflate(R.layout.ab_search, null, false);
        view.findViewById(R.id.back).setOnClickListener(this);
        this.setCustomActionBar(view);
        final SearchPromptAdapter searchPromptAdapter = new SearchPromptAdapter(this);
        this.i = (SearchFixListView) this.findViewById(R.id.search_prompt_list);
        this.i.setAdapter(searchPromptAdapter);
        this.i.setOnItemClickListener(searchPromptAdapter);
        this.e = (SearchEditText) view.findViewById(R.id.search_input_edit);
        this.e.setOnUserInputListener(new ax() {
            @Override
            public void a() {
                String string = String.valueOf(Calendar.getInstance().getTimeInMillis());
                searchPromptAdapter.getFilter().filter(string);
            }
        });
        this.f = view.findViewById(R.id.search_input_search);
        this.g = view.findViewById(R.id.search_input_clean);
        this.j = this.findViewById(R.id.pb_loading);
        this.k = this.findViewById(R.id.search_empty_layout);
        View view2 = this.findViewById(R.id.search_empty_add);
        this.n = this.findViewById(R.id.focusable);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        view2.setOnClickListener(this);
        this.f.setEnabled(false);
        this.h = (ListView) this.findViewById(R.id.search_list);
        if (this.c == 1) {
            this.m = layoutInflater.inflate(R.layout.search_header, (ViewGroup) this.h, false);
            this.h.addHeaderView(this.m, null, false);
            this.m.setOnClickListener(this);
        }
        this.l = new E(layoutInflater);
        this.h.setAdapter(this.l);
        this.h.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookSummary bookSummary;
                int n2 = position - SearchActivity.this.h.getHeaderViewsCount();
                if (n2 < 0 || n2 >= SearchActivity.this.l.getCount() || (bookSummary = (BookSummary) SearchActivity.this.l.getItem(n2)) == null) return;
                if (bookSummary.getPromLink() == null) {
                    SearchActivity.this.startActivity(BookInfoActivity.a(SearchActivity.this, bookSummary.getId()));
                    return;
                }
                new j((Context) SearchActivity.this, bookSummary.getPromLink()).a();
           }
        });
        if (bundle != null) {
            this.b = bundle.getString("saved_keyword");
            if (this.b != null) {
                this.e.setTextByCode(this.b);
            }
        }
        this.e.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (SearchActivity.this.e.getText().toString().trim().equals("")) {
                    com.clilystudio.netbook.util.e.a((Activity) SearchActivity.this,"请输入要搜索的关键字");
                    return true;
                }
                SearchActivity.this.a(true, true);
                return true;
            }
        });
        this.e.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
             }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                SearchActivity.this.o = null;
            }

            @Override
            public void afterTextChanged(Editable s) {
                 boolean bl = !com.clilystudio.netbook.hpay100.a.a.Q(s.toString());
                SearchActivity.a(SearchActivity.this, bl);
           }
        });
        this.e.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                boolean bl2 = !com.clilystudio.netbook.hpay100.a.a.Q(SearchActivity.this.e.getText().toString());
                SearchActivity.a(SearchActivity.this, bl2);
            }
        });
        this.t = this.findViewById(R.id.select_word_layout);
        this.t.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                SearchActivity.this.g();
                return false;
            }
        });
        this.u = this.findViewById(R.id.clear_history);
        this.u.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SearchActivity.d(SearchActivity.this);
                MiStatInterface.recordCountEvent("search_history_clear", null);
            }
        });
        this.v = (ListView) this.findViewById(R.id.search_history_list);
        this.x = (List) a.k(c.e, "search_history.txt");
        if (this.x == null) {
            this.x = new ArrayList<String>();
        }
        if (this.x.size() == 0) {
            this.a(false);
        }
        this.w = new SearchHistoryAdapter(this);
        this.v.setAdapter(this.w);
        this.v.setOnItemClickListener(this.w);
        if (this.c != 1) {
            this.e.setTextByCode(this.b);
            this.a(false, false);
            this.g();
        } else {
            this.f();
        }
        this.q = (RelativeLayout) this.findViewById(R.id.ll_hot_keyword_continer);
        this.r = (AutoFlowView) this.findViewById(R.id.afv_hots);
        this.s = (TextView) this.findViewById(R.id.btn_change);
        if (a.k(c.e, "search_hotword.txt") != null && a.a((Context) this, "search_hot_words_date", 0) != 0) {
            List list = (List) a.k(c.e, "search_hotword.txt");
            this.q.setVisibility(View.VISIBLE);
            this.r.setWords(list);
            this.r.setOnItemClickListener(new i() {
                @Override
                public void a(String var1) {
                    com.clilystudio.netbook.hpay100.a.a.t(SearchActivity.this, var1);
                    SearchActivity.a(SearchActivity.this, var1);
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    com.clilystudio.netbook.hpay100.a.a.G(SearchActivity.this);
                    SearchActivity.e(SearchActivity.this).a();
                }
            });
            return;
        }
        a.b((Context) this, "search_hot_words_date", 1);
        new bM(this, 0).b(new String[0]);
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
        final /* synthetic */ SearchActivity a;
        private List<String> b;
        private bQ c;

        public SearchPromptAdapter(SearchActivity searchActivity) {
            this.a = searchActivity;
            this.b = new ArrayList<String>();
        }

        static /* synthetic */ List a(SearchPromptAdapter searchActivity$SearchPromptAdapter) {
            return searchActivity$SearchPromptAdapter.b;
        }

        static /* synthetic */ List a(SearchPromptAdapter searchActivity$SearchPromptAdapter, List list) {
            searchActivity$SearchPromptAdapter.b = list;
            return list;
        }

        @Override
        public final int getCount() {
            return this.b.size();
        }

        @Override
        public final Filter getFilter() {
            if (this.c == null) {
                this.c = new bQ(this, 0);
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
            SearchPromptAdapter$ViewHolder searchActivity$SearchPromptAdapter$ViewHolder = new SearchPromptAdapter$ViewHolder(this, view2);
            if (n >= 0 && n < this.b.size()) {
                searchActivity$SearchPromptAdapter$ViewHolder.label.setText(this.b.get(n));
            }
            return view2;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
            SearchActivity.k(this.a).setVisibility(View.GONE);
            if (n >= 0 && n < this.b.size()) {
                String string = this.b.get(n);
                SearchActivity.f(this.a).setTextByCode(string);
                SearchActivity.b(this.a, true);
            }
        }
        class ViewHolder {
            TextView label;

            ViewHolder(SearchActivity.SearchPromptAdapter searchPromptAdapter, View view) {
                this.label = (TextView) view.findViewById(R.id.search_prompt_list_item);
            }
        }
    }
    public final class SearchHistoryAdapter extends BaseAdapter implements AdapterView.OnItemClickListener {
        private /* synthetic */ SearchActivity a;

        public SearchHistoryAdapter(SearchActivity searchActivity) {
            this.a = searchActivity;
        }

        @Override
        public final int getCount() {
            return SearchActivity.l(this.a).size();
        }

        @Override
        public final Object getItem(int n) {
            return SearchActivity.l(this.a).get(n);
        }

        @Override
        public final long getItemId(int n) {
            return n;
        }

        @Override
        public final View getView(int n, View view, ViewGroup viewGroup) {
            View view2 = this.a.getLayoutInflater().inflate(R.layout.list_item_search_history, viewGroup, false);
            SearchHistoryAdapter$ViewHolder searchActivity$SearchHistoryAdapter$ViewHolder = new SearchHistoryAdapter$ViewHolder(this, view2);
            if (n >= 0 && n < SearchActivity.l(this.a).size()) {
                searchActivity$SearchHistoryAdapter$ViewHolder.word.setText((CharSequence) SearchActivity.l(this.a).get(n));
            }
            return view2;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
            if (n >= 0 && n < SearchActivity.l(this.a).size()) {
                SearchActivity.a(this.a, (String) SearchActivity.l(this.a).get(n));
                b.a(this.a, "search_history_word_click", (String) SearchActivity.l(this.a).get(n));
            }
        }
        class SearchHistoryAdapter$ViewHolder {
            TextView word;

            SearchHistoryAdapter$ViewHolder(SearchActivity.SearchHistoryAdapter searchHistoryAdapter, View view) {
                this.word = (TextView) view.findViewById(R.id.search_history_item);
            }
        }
    }
}
