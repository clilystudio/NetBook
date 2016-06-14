package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.widget.AutoFlowView;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;

import java.util.ArrayList;
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
    private SearchActivity$SearchHistoryAdapter w;
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
        searchActivity.t.setVisibility(8);
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
            searchActivity.t.setVisibility(8);
            return;
        }
        if (!searchActivity.p) {
            searchActivity.t.setVisibility(0);
        }
        searchActivity.i.setVisibility(8);
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
                this.j.setVisibility(8);
                this.k.setVisibility(8);
                this.h.setVisibility(0);
                return;
            }
            case 0: {
                this.j.setVisibility(0);
                this.k.setVisibility(8);
                this.h.setVisibility(8);
                return;
            }
            case 3: {
                this.j.setVisibility(8);
                this.k.setVisibility(0);
                this.h.setVisibility(8);
                return;
            }
            case 2:
        }
        this.j.setVisibility(8);
        this.k.setVisibility(8);
        this.h.setVisibility(8);
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
        this.i.setVisibility(8);
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
                e.a((Activity) this, (int) 2131034418);
            }
            if (!bl || this.m == null) return;
            {
                this.m.setVisibility(0);
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
        this.n.setVisibility(0);
        this.getWindow().setSoftInputMode(21);
        this.e.requestFocus();
    }

    private void g() {
        this.n.setVisibility(8);
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
            this.i.setVisibility(8);
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
            case 2131493016: {
                this.a(true, true);
                this.g();
                return;
            }
            case 2131493015: {
                this.b = "";
                this.e.setTextByCode(this.b);
                this.f();
                return;
            }
            case 2131493983: {
                this.b();
                return;
            }
            case 2131493982: {
                this.b();
                return;
            }
            case 2131493013:
        }
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903127);
        ButterKnife.inject(this);
        Intent intent = this.getIntent();
        this.c = intent.getIntExtra("search_mode", 1);
        if (this.c == 2) {
            this.b = intent.getStringExtra("keyword");
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = layoutInflater.inflate(2130903042, null, false);
        view.findViewById(2131493013).setOnClickListener(this);
        this.setCustomActionBar(view);
        SearchActivity$SearchPromptAdapter searchActivity$SearchPromptAdapter = new SearchActivity$SearchPromptAdapter(this);
        this.i = (SearchFixListView) this.findViewById(2131493193);
        this.i.setAdapter(searchActivity$SearchPromptAdapter);
        this.i.setOnItemClickListener(searchActivity$SearchPromptAdapter);
        this.e = (SearchEditText) view.findViewById(2131493014);
        this.e.setOnUserInputListener(new bD(this, searchActivity$SearchPromptAdapter));
        this.f = view.findViewById(2131493016);
        this.g = view.findViewById(2131493015);
        this.j = this.findViewById(2131493085);
        this.k = this.findViewById(2131493184);
        View view2 = this.findViewById(2131493982);
        this.n = this.findViewById(2131493183);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        view2.setOnClickListener(this);
        this.f.setEnabled(false);
        this.h = (ListView) this.findViewById(2131493185);
        if (this.c == 1) {
            this.m = layoutInflater.inflate(2130903388, (ViewGroup) this.h, false);
            this.h.addHeaderView(this.m, null, false);
            this.m.setOnClickListener(this);
        }
        this.l = new E(layoutInflater);
        this.h.setAdapter(this.l);
        this.h.setOnItemClickListener(new bE(this));
        if (bundle != null) {
            this.b = bundle.getString("saved_keyword");
            if (this.b != null) {
                this.e.setTextByCode(this.b);
            }
        }
        this.e.setOnEditorActionListener(new bJ(this));
        this.e.addTextChangedListener(new bK(this));
        this.e.setOnFocusChangeListener(new bL(this));
        this.t = this.findViewById(2131493186);
        this.t.setOnTouchListener(new bF(this));
        this.u = this.findViewById(2131493191);
        this.u.setOnClickListener(new bG(this));
        this.v = (ListView) this.findViewById(2131493192);
        this.x = (List) a.k(c.e, "search_history.txt");
        if (this.x == null) {
            this.x = new ArrayList<String>();
        }
        if (this.x.size() == 0) {
            this.a(false);
        }
        this.w = new SearchActivity$SearchHistoryAdapter(this);
        this.v.setAdapter(this.w);
        this.v.setOnItemClickListener(this.w);
        if (this.c != 1) {
            this.e.setTextByCode(this.b);
            this.a(false, false);
            this.g();
        } else {
            this.f();
        }
        this.q = (RelativeLayout) this.findViewById(2131493187);
        this.r = (AutoFlowView) this.findViewById(2131493190);
        this.s = (TextView) this.findViewById(2131493189);
        if (a.k(c.e, "search_hotword.txt") != null && a.a((Context) this, "search_hot_words_date", 0) != 0) {
            List list = (List) a.k(c.e, "search_hotword.txt");
            this.q.setVisibility(0);
            this.r.setWords(list);
            this.r.setOnItemClickListener(new bH(this));
            this.s.setOnClickListener(new bI(this));
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
}
