package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView$OnEditorActionListener;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;
import com.clilystudio.netbook.widget.ax;

import butterknife.ButterKnife;

public class UGCGuideAddBookActivity extends BaseActivity implements View$OnClickListener {

    private InputMethodManager a;
    private String b;
    private SearchEditText c;
    private View e;
    private View f;
    private ListView g;
    private SearchFixListView h;
    private View i;
    private View j;
    private y k;
    private View l;
    private String m;
    private boolean n;

    static SearchEditText a(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return UGCGuideAddBookActivity1.c;
    }

    static String a(UGCGuideAddBookActivity UGCGuideAddBookActivity1, String String2) {
        UGCGuideAddBookActivity1.m = String2;
        return String2;
    }

    static void a(UGCGuideAddBookActivity UGCGuideAddBookActivity1, int int2) {
        if (int2 >= 0 && int2 < UGCGuideAddBookActivity1.k.getCount()) {
            BookSummary BookSummary3 = (BookSummary) UGCGuideAddBookActivity1.k.getItem(int2);

            e().addBook(BookSummary3);
            BookSummary3.setSelected(true);
        }
    }

    static boolean a(UGCGuideAddBookActivity UGCGuideAddBookActivity1, boolean boolean2) {
        UGCGuideAddBookActivity1.n = boolean2;
        return boolean2;
    }

    static UGCNewCollection b(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return e();
    }

    static void b(UGCGuideAddBookActivity UGCGuideAddBookActivity1, int int2) {
        UGCGuideAddBookActivity1.a(int2);
    }

    static void b(UGCGuideAddBookActivity UGCGuideAddBookActivity1, boolean boolean2) {
        UGCGuideAddBookActivity1.a(true);
    }

    static boolean b(UGCGuideAddBookActivity UGCGuideAddBookActivity1, String String2) {
        if (!UGCGuideAddBookActivity1.c.getText().toString().equals(String2) && !String2.equals(UGCGuideAddBookActivity1.m))
            return true;
        else
            return false;
    }

    static y c(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return UGCGuideAddBookActivity1.k;
    }

    static void c(UGCGuideAddBookActivity UGCGuideAddBookActivity1, boolean boolean2) {
        View View3;
        int int4;

        UGCGuideAddBookActivity1.e.setEnabled(boolean2);
        UGCGuideAddBookActivity1.f.setEnabled(boolean2);
        View3 = UGCGuideAddBookActivity1.f;
        if (boolean2 && UGCGuideAddBookActivity1.c.isFocused())
            int4 = 0;
        else
            int4 = 4;
        View3.setVisibility(int4);
    }

    static ListView d(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return UGCGuideAddBookActivity1.g;
    }

    static boolean e(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return UGCGuideAddBookActivity1.n;
    }

    static SearchFixListView f(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        return UGCGuideAddBookActivity1.h;
    }

    static void g(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        UGCGuideAddBookActivity1.a(false);
    }

    private void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                i.setVisibility(8);
                j.setVisibility(8);
                g.setVisibility(0);
                return;
            case 0:
                i.setVisibility(0);
                j.setVisibility(8);
                g.setVisibility(8);
                return;
            case 3:
                i.setVisibility(8);
                j.setVisibility(0);
                g.setVisibility(8);
                return;
            case 2:
                i.setVisibility(8);
                j.setVisibility(8);
                g.setVisibility(8);
                return;
        }
    }

    private void a(boolean boolean1) {
        h.setVisibility(8);
        b = c.getText().toString().trim();
        f();
        if (com.clilystudio.netbook.hpay100.a.a.t((Context) this)) {
            a(0);
            if (boolean1) {
                w w2 = new w(this, (byte) 0);
                String[] String_1darray3 = new String[1];

                String_1darray3[0] = b;
                w2.b(String_1darray3);
            } else {
                A A5 = new A(this, (byte) 0);
                String[] String_1darray6 = new String[1];

                String_1darray6[0] = b;
                A5.b(String_1darray6);
            }
        } else
            com.clilystudio.netbook.util.e.a((Activity) this, 2131034418);
    }

    private void b() {
        l.setVisibility(0);
        getWindow().setSoftInputMode(21);
        c.requestFocus();
    }

    private void f() {
        l.setVisibility(8);
        c.clearFocus();
        if (a == null)
            a = (InputMethodManager) getSystemService("input_method");
        a.hideSoftInputFromWindow(c.getWindowToken(), 0);
        getWindow().setSoftInputMode(2);
    }

    public void onBackPressed() {
        int int1;

        if (h.getVisibility() == 0)
            int1 = 1;
        else
            int1 = 0;
        if (int1 != 0)
            h.setVisibility(8);
        else
            super.onBackPressed();
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            case 150:
            default:
                return;
            case 152:
                a(true);
                f();
                n = false;
                return;
            case 151:
                b = "";
                c.setTextByCode(b);
                b();
                return;
            case 149:
                f();
                finish();
                return;
        }
    }

    public void onCreate(Bundle Bundle1) {
        LayoutInflater LayoutInflater2;
        View View3;
        Object Object4;

        super.onCreate(Bundle1);
        setContentView(2130903127);
        ButterKnife.inject((Activity) this);
        LayoutInflater2 = LayoutInflater.from((Context) this);
        View3 = LayoutInflater2.inflate(2130903042, null, false);
        View3.findViewById(2131493013).setOnClickListener(this);
        setCustomActionBar(View3);
        findViewById(2131493186).setVisibility(8);
        n = true;
        Object4 = new UGCGuideAddBookActivity$SearchPromptAdapter(this);
        h = (SearchFixListView) findViewById(2131493193);
        h.setAdapter((ListAdapter) Object4);
        h.setOnItemClickListener((AdapterView$OnItemClickListener) Object4);
        c = (SearchEditText) View3.findViewById(2131493014);
        c.setOnUserInputListener((ax) new s(this, (UGCGuideAddBookActivity$SearchPromptAdapter) Object4));
        e = View3.findViewById(2131493016);
        f = View3.findViewById(2131493015);
        i = findViewById(2131493085);
        j = findViewById(2131493184);
        l = findViewById(2131493183);
        findViewById(2131493982).setVisibility(8);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        e.setEnabled(false);
        g = (ListView) findViewById(2131493185);
        k = new y(this, LayoutInflater2);
        g.setAdapter((ListAdapter) k);
        if (Bundle1 != null) {
            b = Bundle1.getString("saved_keyword");
            if (b != null)
                c.setTextByCode(b);
        }
        c.setOnEditorActionListener((TextView$OnEditorActionListener) new t(this));
        c.addTextChangedListener((TextWatcher) new u(this));
        c.setOnFocusChangeListener((View$OnFocusChangeListener) new v(this));
        b();
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        if (b != null)
            Bundle1.putString("saved_keyword", b);
    }
}
