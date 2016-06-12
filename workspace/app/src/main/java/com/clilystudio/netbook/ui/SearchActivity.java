package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView$OnEditorActionListener;

import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.widget.AutoFlowView;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;
import com.clilystudio.netbook.widget.ax;

import java.util.ArrayList;
import java.util.List;

import butterknife.ButterKnife;

public class SearchActivity extends BaseActivity implements View$OnClickListener {

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
    private RelativeLayout q;
    private AutoFlowView r;
    private TextView s;
    private View t;
    private View u;
    private ListView v;
    private SearchActivity$SearchHistoryAdapter w;
    private List x;
    private boolean p = false;

    public static Intent a(Context Context1) {
        return a(Context1, 1);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, int int2) {
    }

    static ListView a(SearchActivity SearchActivity1) {
        return SearchActivity1.h;
    }

    static void a(SearchActivity SearchActivity1, int int2) {
        SearchActivity1.a(int2);
    }

    static void a(SearchActivity SearchActivity1, String String2) {
        SearchActivity1.t.setVisibility(8);
        SearchActivity1.e.setTextByCode(String2);
        SearchActivity1.a(true, false);
    }

    static void a(SearchActivity SearchActivity1, boolean boolean2) {
        View View3;
        int int4;

        SearchActivity1.f.setEnabled(boolean2);
        SearchActivity1.g.setEnabled(boolean2);
        View3 = SearchActivity1.g;
        if (boolean2 && SearchActivity1.e.isFocused())
            int4 = 0;
        else
            int4 = 4;
        View3.setVisibility(int4);
        if (SearchActivity1.t != null) {
            if (boolean2)
                SearchActivity1.t.setVisibility(8);
            else {
                if (!SearchActivity1.p)
                    SearchActivity1.t.setVisibility(0);
                SearchActivity1.i.setVisibility(8);
                return;
            }
        }
    }

    static void a(SearchActivity SearchActivity1, boolean boolean2, boolean boolean3) {
        SearchActivity1.a(true, true);
    }

    static E b(SearchActivity SearchActivity1) {
        return SearchActivity1.l;
    }

    static String b(SearchActivity SearchActivity1, String String2) {
        SearchActivity1.o = String2;
        return String2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void b(SearchActivity SearchActivity1, boolean boolean2) {
        SearchActivity1.a(true, false);
    }

    static void c(SearchActivity SearchActivity1) {
        SearchActivity1.g();
    }

    static boolean c(SearchActivity SearchActivity1, String String2) {
        if (!SearchActivity1.e.getText().toString().equals(String2) && !String2.equals(SearchActivity1.o))
            return true;
        else
            return false;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void d(SearchActivity SearchActivity1) {
        SearchActivity1.x.clear();
        SearchActivity1.w.notifyDataSetChanged();
        com.clilystudio.netbook.hpay100.a.a.a(SearchActivity1.x, com.clilystudio.netbook.c.e, "search_history.txt");
        SearchActivity1.a(false);
    }

    static AutoFlowView e(SearchActivity SearchActivity1) {
        return SearchActivity1.r;
    }

    static SearchEditText f(SearchActivity SearchActivity1) {
        return SearchActivity1.e;
    }

    static RelativeLayout g(SearchActivity SearchActivity1) {
        return SearchActivity1.q;
    }

    static TextView h(SearchActivity SearchActivity1) {
        return SearchActivity1.s;
    }

    static int i(SearchActivity SearchActivity1) {
        return SearchActivity1.c;
    }

    static String j(SearchActivity SearchActivity1) {
        return SearchActivity1.b;
    }

    static SearchFixListView k(SearchActivity SearchActivity1) {
        return SearchActivity1.i;
    }

    static List l(SearchActivity SearchActivity1) {
        return SearchActivity1.x;
    }

    private void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                j.setVisibility(8);
                k.setVisibility(8);
                h.setVisibility(0);
                return;
            case 0:
                j.setVisibility(0);
                k.setVisibility(8);
                h.setVisibility(8);
                return;
            case 3:
                j.setVisibility(8);
                k.setVisibility(0);
                h.setVisibility(8);
                return;
            case 2:
                j.setVisibility(8);
                k.setVisibility(8);
                h.setVisibility(8);
                return;
        }
    }

    private void a(boolean boolean1) {
        u.setClickable(boolean1);
        u.setEnabled(boolean1);
        u.setFocusable(boolean1);
    }

    private void a(boolean boolean1, boolean boolean2) {
    }

    private void b() {
    }

    private void f() {
        n.setVisibility(0);
        getWindow().setSoftInputMode(21);
        e.requestFocus();
    }

    private void g() {
        n.setVisibility(8);
        e.clearFocus();
        if (a == null)
            a = (InputMethodManager) getSystemService("input_method");
        a.hideSoftInputFromWindow(e.getWindowToken(), 0);
        getWindow().setSoftInputMode(2);
    }

    public void onBackPressed() {
        int int1;

        if (i.getVisibility() == 0)
            int1 = 1;
        else
            int1 = 0;
        if (int1 != 0)
            i.setVisibility(8);
        else
            super.onBackPressed();
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 2131493016:
                a(true, true);
                g();
                return;
            case 2131493015:
                b = "";
                e.setTextByCode(b);
                f();
                return;
            case 2131493983:
                b();
                return;
            case 2131493982:
                b();
                return;
            case 2131493013:
                finish();
                return;
        }
    }

    public void onCreate(Bundle Bundle1) {
        Intent Intent2;
        LayoutInflater LayoutInflater3;
        View View4;
        Object Object5;
        View View6;

        super.onCreate(Bundle1);
        setContentView(2130903127);
        ButterKnife.inject((Activity) this);
        Intent2 = getIntent();
        c = Intent2.getIntExtra("search_mode", 1);
        if (c == 2)
            b = Intent2.getStringExtra("keyword");
        LayoutInflater3 = LayoutInflater.from((Context) this);
        View4 = LayoutInflater3.inflate(2130903042, null, false);
        View4.findViewById(2131493013).setOnClickListener(this);
        setCustomActionBar(View4);
        Object5 = new SearchActivity$SearchPromptAdapter(this);
        i = (SearchFixListView) findViewById(2131493193);
        i.setAdapter((ListAdapter) Object5);
        i.setOnItemClickListener((AdapterView$OnItemClickListener) Object5);
        e = (SearchEditText) View4.findViewById(2131493014);
        e.setOnUserInputListener((ax) new bD(this, (SearchActivity$SearchPromptAdapter) Object5));
        f = View4.findViewById(2131493016);
        g = View4.findViewById(2131493015);
        j = findViewById(2131493085);
        k = findViewById(2131493184);
        View6 = findViewById(2131493982);
        n = findViewById(2131493183);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        View6.setOnClickListener(this);
        f.setEnabled(false);
        h = (ListView) findViewById(2131493185);
        if (c == 1) {
            m = LayoutInflater3.inflate(2130903388, (ViewGroup) h, false);
            h.addHeaderView(m, null, false);
            m.setOnClickListener(this);
        }
        l = new E(LayoutInflater3);
        h.setAdapter((ListAdapter) l);
        h.setOnItemClickListener((AdapterView$OnItemClickListener) new bE(this));
        if (Bundle1 != null) {
            b = Bundle1.getString("saved_keyword");
            if (b != null)
                e.setTextByCode(b);
        }
        e.setOnEditorActionListener((TextView$OnEditorActionListener) new bJ(this));
        e.addTextChangedListener((TextWatcher) new bK(this));
        e.setOnFocusChangeListener((View$OnFocusChangeListener) new bL(this));
        t = findViewById(2131493186);
        t.setOnTouchListener((View$OnTouchListener) new bF(this));
        u = findViewById(2131493191);
        u.setOnClickListener((View$OnClickListener) new bG(this));
        v = (ListView) findViewById(2131493192);
        x = (List) com.clilystudio.netbook.hpay100.a.a.k(com.clilystudio.netbook.c.e, "search_history.txt");
        if (x == null)
            x = (List) new ArrayList();
        if (x.size() == 0)
            a(false);
        w = new SearchActivity$SearchHistoryAdapter(this);
        v.setAdapter((ListAdapter) w);
        v.setOnItemClickListener((AdapterView$OnItemClickListener) w);
        if (c != 1) {
            e.setTextByCode(b);
            a(false, false);
            g();
        } else
            f();
        q = (RelativeLayout) findViewById(2131493187);
        r = (AutoFlowView) findViewById(2131493190);
        s = (TextView) findViewById(2131493189);
        if (com.clilystudio.netbook.hpay100.a.a.k(com.clilystudio.netbook.c.e, "search_hotword.txt") == null || com.clilystudio.netbook.hpay100.a.a.a((Context) this, "search_hot_words_date", 0) == 0) {
            com.clilystudio.netbook.hpay100.a.a.b((Context) this, "search_hot_words_date", 1);
            new bM(this, (byte) 0).b(new String[0]);
        } else {
            List List8 = (List) com.clilystudio.netbook.hpay100.a.a.k(com.clilystudio.netbook.c.e, "search_hotword.txt");

            q.setVisibility(0);
            r.setWords(List8);
            r.setOnItemClickListener((com.clilystudio.netbook.widget.i) new bH(this));
            s.setOnClickListener((View$OnClickListener) new bI(this));
        }
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        if (b != null)
            Bundle1.putString("saved_keyword", b);
    }
}
