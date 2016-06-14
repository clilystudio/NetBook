package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;
import com.clilystudio.netbook.widget.ax;

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
    private y k;
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

    static /* synthetic */ y c(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
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
                w w2 = new w(this, 0);
                Object[] arrobject = new String[]{this.b};
                w2.b(arrobject);
                return;
            }
            A a2 = new A(this, 0);
            String[] arrstring = new String[]{this.b};
            a2.b(arrstring);
            return;
        }
        e.a((Activity) this, (int) 2131034418);
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
            case 2131493016: {
                this.a(true);
                this.f();
                this.n = false;
                return;
            }
            case 2131493015: {
                this.b = "";
                this.c.setTextByCode(this.b);
                this.b();
                return;
            }
            case 2131493013:
        }
        this.f();
        this.finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903127);
        ButterKnife.inject(this);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = layoutInflater.inflate(2130903042, null, false);
        view.findViewById(2131493013).setOnClickListener(this);
        this.setCustomActionBar(view);
        this.findViewById(2131493186).setVisibility(View.GONE);
        this.n = true;
        UGCGuideAddBookActivity$SearchPromptAdapter uGCGuideAddBookActivity$SearchPromptAdapter = new UGCGuideAddBookActivity$SearchPromptAdapter(this);
        this.h = (SearchFixListView) this.findViewById(2131493193);
        this.h.setAdapter(uGCGuideAddBookActivity$SearchPromptAdapter);
        this.h.setOnItemClickListener(uGCGuideAddBookActivity$SearchPromptAdapter);
        this.c = (SearchEditText) view.findViewById(2131493014);
        this.c.setOnUserInputListener((ax) ((Object) new s(this, uGCGuideAddBookActivity$SearchPromptAdapter)));
        this.e = view.findViewById(2131493016);
        this.f = view.findViewById(2131493015);
        this.i = this.findViewById(2131493085);
        this.j = this.findViewById(2131493184);
        this.l = this.findViewById(2131493183);
        this.findViewById(2131493982).setVisibility(View.GONE);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.e.setEnabled(false);
        this.g = (ListView) this.findViewById(2131493185);
        this.k = new y(this, layoutInflater);
        this.g.setAdapter((ListAdapter) ((Object) this.k));
        if (bundle != null) {
            this.b = bundle.getString("saved_keyword");
            if (this.b != null) {
                this.c.setTextByCode(this.b);
            }
        }
        this.c.setOnEditorActionListener((TextView.OnEditorActionListener) ((Object) new t(this)));
        this.c.addTextChangedListener((TextWatcher) ((Object) new u(this)));
        this.c.setOnFocusChangeListener((View.OnFocusChangeListener) ((Object) new v(this)));
        this.b();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.b != null) {
            bundle.putString("saved_keyword", this.b);
        }
    }
}
