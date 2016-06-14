package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.event.D;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.ab;
import com.clilystudio.netbook.widget.CoverView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.sharesdk.framework.ShareSDK;

public class UGCGuideEditBooksActivity extends BaseActivity implements View.OnClickListener {
    Map<String, String> a = new HashMap<String, String>();
    private ListView b;
    private View c;
    private Q e;
    private String f;
    private Author g;
    private boolean h;

    static /* synthetic */ UGCNewCollection a(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, int n) {
        String string;
        Editable editable;
        List<BookSummary> list = UGCGuideEditBooksActivity.e().getBooks();
        if (list == null || list.size() == 0) {
            return;
        }
        BookSummary bookSummary = list.get(n);
        View view = uGCGuideEditBooksActivity.getLayoutInflater().inflate(2130903404, null, false);
        ((CoverView) view.findViewById(2131492899)).setImageUrl(bookSummary.getFullCover(), 2130837766);
        ((TextView) view.findViewById(2131492936)).setText(bookSummary.getTitle());
        ((TextView) view.findViewById(2131493317)).setText(bookSummary.getAuthor());
        ((TextView) view.findViewById(2131493775)).setText("" + bookSummary.getLatelyFollower());
        long l2 = bookSummary.getWordCount();
        if (l2 > 10000) {
            l2 /= 10000;
            string = " \u4e07\u5b57";
        } else if (l2 > 100) {
            l2 /= 100;
            string = " \u767e\u5b57";
        } else {
            string = " \u5b57";
        }
        ((TextView) view.findViewById(2131493776)).setText("" + l2);
        ((TextView) view.findViewById(2131493777)).setText(string);
        EditText editText = (EditText) view.findViewById(2131494013);
        if (bookSummary.getAppendComment() != null && !bookSummary.getAppendComment().equals("")) {
            editText.setText(bookSummary.getAppendComment());
        } else {
            editText.setText(uGCGuideEditBooksActivity.a.get(bookSummary.getId()));
        }
        if ((editable = editText.getText()) != null) {
            Selection.setSelection(editText.getText(), editable.length());
        }
        new h(uGCGuideEditBooksActivity).a(view).a("\u4fdd\u5b58", (DialogInterface.OnClickListener) new K(uGCGuideEditBooksActivity, bookSummary, editText)).b(2131034129, (DialogInterface.OnClickListener) new J(uGCGuideEditBooksActivity, bookSummary, editText)).a().show();
        new Handler().postDelayed(new L(uGCGuideEditBooksActivity), 200);
    }

    static /* synthetic */ void b(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, int n) {
        List<BookSummary> list = UGCGuideEditBooksActivity.e().getBooks();
        if (list == null || list.size() == 0) {
            return;
        }
        BookSummary bookSummary = list.get(n);
        h h2 = new h(uGCGuideEditBooksActivity);
        h2.e = "\u786e\u8ba4\u5220\u9664\u672c\u4e66\uff1f";
        h2.a(2131034424, (DialogInterface.OnClickListener) new M(uGCGuideEditBooksActivity, list, bookSummary)).b(2131034129, null).a().show();
    }

    static /* synthetic */ boolean b(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        if (uGCGuideEditBooksActivity.e.getCount() < 8) {
            Object[] arrobject = new Object[]{8};
            e.a((Activity) uGCGuideEditBooksActivity, (String) String.format("\u592a\u5c11\u5566\uff0c\u5355\u4e2a\u4e66\u5355\u81f3\u5c11\u9700\u8981%d\u672c\u5c0f\u8bf4\u54e6", arrobject));
            return false;
        }
        return true;
    }

    static /* synthetic */ void c(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        uGCGuideEditBooksActivity.b();
    }

    static /* synthetic */ boolean d(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return uGCGuideEditBooksActivity.h;
    }

    static /* synthetic */ UGCNewCollection e(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ String f(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return uGCGuideEditBooksActivity.f;
    }

    static /* synthetic */ UGCNewCollection g(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ UGCNewCollection h(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ UGCNewCollection i(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ Author j(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return uGCGuideEditBooksActivity.g;
    }

    static /* synthetic */ UGCNewCollection k(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ UGCNewCollection l(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ UGCNewCollection m(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    static /* synthetic */ UGCNewCollection n(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return UGCGuideEditBooksActivity.e();
    }

    private void b() {
        UGCNewCollection uGCNewCollection = UGCGuideEditBooksActivity.e();
        this.e.a(uGCNewCollection.getBooks());
        if (uGCNewCollection.getBooks() != null && uGCNewCollection.getBooks().size() == 0) {
            this.c.setVisibility(0);
            return;
        }
        this.c.setVisibility(8);
    }

    @l
    public void onAddShelfBooks(D d) {
        N n = new N(this, this);
        String[][] arrarrstring = new String[][]{d.a()};
        n.b((Params[]) arrarrstring);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131494010: {
                this.startActivity(new Intent(this, UGCGuideAddBookActivity.class));
                return;
            }
            case 2131494009:
        }
        this.startActivity(new Intent(this, UGCGuideSelectBookActivity.class));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        String string;
        String string2;
        super.onCreate(bundle);
        this.setContentView(2130903401);
        i.a().a(this);
        Bundle bundle2 = this.getIntent().getExtras();
        if (bundle2 != null && bundle2.containsKey("name") && bundle2.containsKey("desc")) {
            String string3 = bundle2.getString("name");
            string = bundle2.getString("desc");
            string2 = string3;
        } else {
            string = "default_desc";
            string2 = "default_name";
        }
        this.f = bundle2.getString("ugc_id");
        this.g = (Author) bundle2.getSerializable("my_author");
        this.h = this.getIntent().getBooleanExtra("is_draft", false);
        ShareSDK.initSDK(this);
        if (this.h || this.f == null || this.f.equals("")) {
            this.a("\u7f16\u8f91\u4e66\u5355", 2131034475, 2131034448, (ab) new H(this));
        } else {
            this.a("\u4e66\u5355\u8be6\u60c5", 2131034448, (aa) new I(this));
        }
        UGCNewCollection uGCNewCollection = UGCGuideEditBooksActivity.e();
        uGCNewCollection.setDesc(string);
        uGCNewCollection.setTitle(string2);
        this.b = (ListView) this.findViewById(2131492924);
        this.c = this.findViewById(2131494006);
        View view = LayoutInflater.from(this).inflate(2130903402, (ViewGroup) this.b, false);
        TextView textView = (TextView) view.findViewById(2131494007);
        TextView textView2 = (TextView) view.findViewById(2131494008);
        textView.setText(string2);
        textView2.setText(string);
        this.b.addHeaderView(view, null, false);
        view.findViewById(2131494010).setOnClickListener(this);
        view.findViewById(2131494009).setOnClickListener(this);
        this.e = new Q(this, this.getLayoutInflater(), 2130903316);
        this.b.setAdapter(this.e);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b();
    }
}
