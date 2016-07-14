package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
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

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.AutoFlowView;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.SearchEditText;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;


public class SearchActivity extends BaseActivity implements View.OnClickListener {
    private InputMethodManager a;
    private String b;
    private int c;
    private SearchEditText e;
    private View f;
    private View g;
    private ListView h;
    private ListView i;
    private View j;
    private View k;
    private BaseDownloadAdapter<BookSummary> l;
    private View m;
    private View n;
    private String o;
    private boolean p = false;
    private RelativeLayout q;
    private AutoFlowView r;
    private TextView s;
    private View t;
    private View u;
    private SearchHistoryAdapter w;
    private List<String> x;

    public static Intent a(Context context) {
        return SearchActivity.a(context, 1);
    }

    public static Intent a(Context context, int n) {
        return new IntentBuilder().put(context, SearchActivity.class).put("search_mode", n).build();
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
        view.setVisibility(bl && searchActivity.e.isFocused() ? View.VISIBLE : View.INVISIBLE);
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

    static /* synthetic */  BaseDownloadAdapter<BookSummary> b(SearchActivity searchActivity) {
        return searchActivity.l;
    }

    static /* synthetic */ String b(SearchActivity searchActivity, String string) {
        searchActivity.o = string;
        return string;
    }

    static /* synthetic */ void b(SearchActivity searchActivity, boolean bl) {
        searchActivity.a(bl, false);
    }

    static /* synthetic */ void c(SearchActivity searchActivity) {
        searchActivity.g();
    }

    static /* synthetic */ boolean c(SearchActivity searchActivity, String string) {
        return !searchActivity.e.getText().toString().equals(string) && !string.equals(searchActivity.o);
    }

    static /* synthetic */ void d(SearchActivity searchActivity) {
        searchActivity.x.clear();
        searchActivity.w.notifyDataSetChanged();
        com.clilystudio.netbook.hpay100.a.a.a(searchActivity.x, CachePathConst.SearchHistory, "search_history.txt");
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

    static /* synthetic */ ListView k(SearchActivity searchActivity) {
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
    private void a(boolean bl, final boolean bl2) {
        this.i.setVisibility(View.GONE);
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
        com.clilystudio.netbook.hpay100.a.a.a(this.x, CachePathConst.SearchHistory, "search_history.txt");
        this.a(true);
        this.g();
        if (com.clilystudio.netbook.hpay100.a.a.isConnectedOrConnecting(this)) {
            this.a(0);
            final BaseAsyncTask<String, Void, List<BookSummary>> bR2 = new BaseAsyncTask<String, Void, List<BookSummary>>() {

                @Override
                protected List<BookSummary> doInBackground(String... params) {
                    if (SearchActivity.i(SearchActivity.this) == 1) {
                        List<BookSummary> list = ApiServiceProvider.getApiService().n(params[0]);
                        SearchPromRoot searchPromRoot = ApiServiceProvider.getApiService().q(params[0]);
                        if (searchPromRoot == null) return list;
                        if (searchPromRoot.getProm() == null) return list;
                        list.add(0, searchPromRoot.getProm());
                        return list;
                    }
                    SearchResultRoot searchResultRoot = ApiServiceProvider.getApiService().p(params[0]);
                    if (searchResultRoot == null) return null;
                    return searchResultRoot.getBooks();
                }

                @Override
                protected void onPreExecute() {
                    super.onPreExecute();
                    if (bl2) {
                        SearchActivity.b(SearchActivity.this, SearchActivity.f(SearchActivity.this).getText().toString());
                    }
                }

                @Override
                protected void onPostExecute(List<BookSummary> bookSummaries) {
                    super.onPostExecute(bookSummaries);
                    SearchActivity.a(SearchActivity.this, true);
                    if (bookSummaries == null) {
                        SearchActivity.a(SearchActivity.this, 2);
                        ToastUtil.showToast(SearchActivity.this, R.string.search_failed);
                        return;
                    }
                    SearchActivity.b(SearchActivity.this).a(bookSummaries);
                    new Handler().post(new Runnable() {
                        @Override
                        public void run() {
                            if (SearchActivity.a(SearchActivity.this) != null) {
                                SearchActivity.a(SearchActivity.this).setSelectionAfterHeaderView();
                                SearchActivity.a(SearchActivity.this).setSelection(0);
                            }
                        }
                    });
                    if (bookSummaries.size() > 0) {
                        SearchActivity.a(SearchActivity.this, 1);
                    } else {
                        SearchActivity.a(SearchActivity.this, 3);
                    }
                }
            };
            bR2.b(this.b);
        } else {
            ToastUtil.showToast(this, R.string.network_unconnected);
        }
        if (bl && this.m != null) {
            this.m.setVisibility(View.VISIBLE);
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
            this.a = (InputMethodManager) this.getSystemService(INPUT_METHOD_SERVICE);
        }
        this.a.hideSoftInputFromWindow(this.e.getWindowToken(), 0);
        this.getWindow().setSoftInputMode(2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = this.i.getVisibility() == View.VISIBLE;
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
        Intent intent = this.getIntent();
        this.c = intent.getIntExtra("search_mode", 1);
        if (this.c == 2) {
            this.b = intent.getStringExtra("keyword");
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = layoutInflater.inflate(R.layout.ab_search, (ViewGroup) getWindow().getDecorView(), false);
        view.findViewById(R.id.back).setOnClickListener(this);
        this.setCustomActionBar(view);
        final SearchPromptAdapter searchPromptAdapter = new SearchPromptAdapter(this);
        this.i = (ListView) this.findViewById(R.id.search_prompt_list);
        assert this.i != null;
        this.i.setAdapter(searchPromptAdapter);
        this.i.setOnItemClickListener(searchPromptAdapter);
        this.e = (SearchEditText) view.findViewById(R.id.search_input_edit);
        this.e.setOnUserInputListener(new SearchEditText.OnUserInputListener() {
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
        assert view2 != null;
        view2.setOnClickListener(this);
        this.n = this.findViewById(R.id.focusable);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.f.setEnabled(false);
        this.h = (ListView) this.findViewById(R.id.search_list);
        if (this.c == 1) {
            this.m = layoutInflater.inflate(R.layout.search_header, this.h, false);
            this.h.addHeaderView(this.m, null, false);
            this.m.setOnClickListener(this);
        }
        this.l = new BaseDownloadAdapter<BookSummary>(layoutInflater, R.layout.list_item_search_result) {

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.setText(1, bookSummary.getTitle());
                Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
                this.setText(2, String.format(Locale.CHINA, "%d人在追  |  %.1f%%读者留存  |  %s著", arrobject));
                this.setVisibility(3, TextUtils.isEmpty(bookSummary.getPromLink()));
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.prom_label};
            }
        };
        this.h.setAdapter(this.l);
        this.h.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookSummary bookSummary;
                int n2 = position - SearchActivity.this.h.getHeaderViewsCount();
                if (n2 < 0 || n2 >= SearchActivity.this.l.getCount() || (bookSummary = SearchActivity.this.l.getItem(n2)) == null) return;
                SearchActivity.this.startActivity(BookInfoActivity.a(SearchActivity.this, bookSummary.getId()));
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
                    ToastUtil.showShortToast(SearchActivity.this, "请输入要搜索的关键字");
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
            }
        });
        this.x = com.clilystudio.netbook.hpay100.a.a.k(CachePathConst.SearchHistory, "search_history.txt");
        if (this.x == null) {
            this.x = new ArrayList<>();
        }
        if (this.x.size() == 0) {
            this.a(false);
        }
        this.w = new SearchHistoryAdapter(this);
        ListView v = (ListView) this.findViewById(R.id.search_history_list);
        assert v != null;
        v.setAdapter(this.w);
        v.setOnItemClickListener(this.w);
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
        if (com.clilystudio.netbook.hpay100.a.a.k(CachePathConst.SearchHistory, "search_hotword.txt") != null && com.clilystudio.netbook.hpay100.a.a.a(this, "search_hot_words_date", 0) != 0) {
            List<AutoFlowView.Word> list = com.clilystudio.netbook.hpay100.a.a.k(CachePathConst.SearchHistory, "search_hotword.txt");
            this.q.setVisibility(View.VISIBLE);
            this.r.setWords(list);
            this.r.setOnItemClickListener(new AutoFlowView.OnItemClickListener() {
                @Override
                public void a(String var1) {
                    SearchActivity.a(SearchActivity.this, var1);
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    SearchActivity.e(SearchActivity.this).a();
                }
            });
            return;
        }
        com.clilystudio.netbook.hpay100.a.a.b(this, "search_hot_words_date", 1);
        new BaseAsyncTask<String, Void, HotKeywordResult>() {

            @Override
            protected HotKeywordResult doInBackground(String... params) {
                return this.c().b();
            }

            @Override
            protected void onPostExecute(HotKeywordResult hotKeywordResult) {
                if (hotKeywordResult != null) {
                    ArrayList<AutoFlowView.Word> arrayList = new ArrayList<>();
                    for (String string : hotKeywordResult.getHotWords()) {
                        AutoFlowView.Word word = new AutoFlowView.Word();
                        word.show = 0;
                        word.content = string;
                        arrayList.add(word);
                    }
                    com.clilystudio.netbook.hpay100.a.a.a(arrayList, CachePathConst.SearchHistory, "search_hotword.txt");
                    SearchActivity.g(SearchActivity.this).setVisibility(View.VISIBLE);
                    SearchActivity.e(SearchActivity.this).setWords(hotKeywordResult.getHotWords());
                    SearchActivity.e(SearchActivity.this).setOnItemClickListener(new AutoFlowView.OnItemClickListener() {
                        @Override
                        public void a(String var1) {
                            SearchActivity.a(SearchActivity.this, var1);
                        }
                    });
                    SearchActivity.h(SearchActivity.this).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            SearchActivity.e(SearchActivity.this).a();
                        }
                    });
                    return;
                }
                ToastUtil.showShortToast(SearchActivity.this, "网络不给力！");
            }
        }.b();
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
        private Filter c;

        public SearchPromptAdapter(SearchActivity searchActivity) {
            this.a = searchActivity;
            this.b = new ArrayList<>();
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
                        String string = SearchActivity.f(SearchActivity.this).getText().toString();
                        ArrayList<String> arrayList = new ArrayList<>();
                        arrayList.add(string);
                        arrayList.add(constraint.toString());
                        if (!TextUtils.isEmpty(string)) {
                            ApiServiceProvider.getInstance();
                            AutoCompleteRoot autoCompleteRoot = ApiServiceProvider.getApiService().N(string);
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
                        List<String> list2;
                        int n;
                        List<String> list = (List<String>) results.values;
                        if (list == null || (n = list.size()) < 2) {
                            return;
                        }
                        String string = list.get(n - 2);
                        if (n > 2 && !SearchActivity.c(SearchActivity.this, string)) {
                            list2 = list.subList(0, n - 2);
                        } else {
                            list2 = new ArrayList<>();
                        }
                        SearchPromptAdapter.this.b = list2;
                        if (SearchPromptAdapter.this.b.isEmpty()) {
                            SearchPromptAdapter.this.notifyDataSetInvalidated();
                        } else {
                            SearchPromptAdapter.this.notifyDataSetChanged();
                        }
                        ListView searchFixListView = SearchActivity.k(SearchActivity.this);
                        searchFixListView.setVisibility(SearchPromptAdapter.this.b.isEmpty() ? View.GONE : View.VISIBLE);
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
            LayoutInflater layoutInflater = this.a.getLayoutInflater();
            View view2 = layoutInflater.inflate(R.layout.list_item_search_prompt, viewGroup, false);
            SearchPromptAdapter.ViewHolder viewHolder = new SearchPromptAdapter.ViewHolder(view2);
            if (n >= 0 && n < this.b.size()) {
                viewHolder.label.setText(this.b.get(n));
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

            ViewHolder(View view) {
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
            ViewHolder viewHolder = new ViewHolder(view2);
            if (n >= 0 && n < SearchActivity.l(this.a).size()) {
                viewHolder.word.setText((CharSequence) SearchActivity.l(this.a).get(n));
            }
            return view2;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
            if (n >= 0 && n < SearchActivity.l(this.a).size()) {
                SearchActivity.a(this.a, (String) SearchActivity.l(this.a).get(n));
            }
        }

        class ViewHolder {
            TextView word;

            ViewHolder(View view) {
                this.word = (TextView) view.findViewById(R.id.search_history_item);
            }
        }
    }
}
