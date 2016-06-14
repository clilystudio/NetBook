package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.adapter.W;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer;
import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer$UGCBookItem;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.cd;
import com.clilystudio.netbook.util.T;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.sharesdk.framework.PlatformActionListener;

public class UGCDetailActivity extends BaseActivity implements View.OnClickListener {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView e;
    private TextView f;
    private SmartImageView g;
    private TextView h;
    private ImageButton i;
    private ListView j;
    private W k;
    private View l;
    private View m;
    private View n;
    private String o;
    private boolean p;
    private boolean q;
    private UGCBookDetail r;
    private Author s;
    private View.OnClickListener t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;

    public UGCDetailActivity() {
        this.t = new j(this);
    }

    static /* synthetic */ Author a(UGCDetailActivity uGCDetailActivity, Author author) {
        uGCDetailActivity.s = author;
        return author;
    }

    static /* synthetic */ UGCBookDetail a(UGCDetailActivity uGCDetailActivity, UGCBookDetail uGCBookDetail) {
        uGCDetailActivity.r = uGCBookDetail;
        return uGCBookDetail;
    }

    static /* synthetic */ String a(UGCDetailActivity uGCDetailActivity, String string) {
        uGCDetailActivity.w = string;
        return string;
    }

    static /* synthetic */ void a(UGCDetailActivity uGCDetailActivity, int n) {
        uGCDetailActivity.e(2);
    }

    static /* synthetic */ boolean a(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.p;
    }

    static /* synthetic */ void b(UGCDetailActivity uGCDetailActivity) {
        if (uGCDetailActivity.r != null) {
            MyApplication myApplication = MyApplication.a();
            UGCBookDetail uGCBookDetail = uGCDetailActivity.r;
            UGCNewCollection uGCNewCollection = new UGCNewCollection();
            uGCNewCollection.setTitle(uGCBookDetail.getTitle());
            uGCNewCollection.setDesc(uGCBookDetail.getDesc());
            ArrayList<BookSummary> arrayList = new ArrayList<BookSummary>();
            for (UGCBookDetail$UGCBookContainer uGCBookDetail$UGCBookContainer : uGCBookDetail.getBooks()) {
                BookSummary bookSummary = new BookSummary();
                UGCBookDetail$UGCBookContainer$UGCBookItem uGCBookDetail$UGCBookContainer$UGCBookItem = uGCBookDetail$UGCBookContainer.getBook();
                bookSummary.setAppendComment(uGCBookDetail$UGCBookContainer.getComment());
                bookSummary.setId(uGCBookDetail$UGCBookContainer$UGCBookItem.get_id());
                bookSummary.setCover(uGCBookDetail$UGCBookContainer$UGCBookItem.getCover());
                bookSummary.setTitle(uGCBookDetail$UGCBookContainer$UGCBookItem.getTitle());
                bookSummary.setAuthor(uGCBookDetail$UGCBookContainer$UGCBookItem.getAuthor());
                bookSummary.setLatelyFollower(uGCBookDetail$UGCBookContainer$UGCBookItem.getLatelyFollower());
                bookSummary.setWordCount((int) uGCBookDetail$UGCBookContainer$UGCBookItem.getWordCount());
                arrayList.add(bookSummary);
            }
            uGCNewCollection.setBooks(arrayList);
            myApplication.a = uGCNewCollection;
            Intent intent = new Intent(uGCDetailActivity, UGCGuideAddCollectionActivity.class);
            intent.putExtra("ugc_id", uGCDetailActivity.o);
            intent.putExtra("is_draft", uGCDetailActivity.q);
            if (uGCDetailActivity.s != null) {
                intent.putExtra("my_author", uGCDetailActivity.s);
            }
            uGCDetailActivity.startActivity(intent);
            return;
        }
        e.a((Context) uGCDetailActivity, (String) "\u4e66\u5355\u4fe1\u606f\u672a\u52a0\u8f7d\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }

    static /* synthetic */ void b(UGCDetailActivity uGCDetailActivity, UGCBookDetail uGCBookDetail) {
        uGCDetailActivity.a(uGCBookDetail);
    }

    static /* synthetic */ void c(UGCDetailActivity uGCDetailActivity) {
        Account account = am.a((Activity) uGCDetailActivity);
        if (account != null) {
            q q2 = new q(uGCDetailActivity, 0);
            Object[] arrobject = new String[]{account.getToken(), uGCDetailActivity.o};
            q2.b(arrobject);
        }
    }

    static /* synthetic */ TextView d(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.e;
    }

    static /* synthetic */ ImageButton e(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.i;
    }

    static /* synthetic */ void f(UGCDetailActivity uGCDetailActivity) {
        new cb(uGCDetailActivity, (cd) ((Object) new n(uGCDetailActivity))).a().show();
    }

    static /* synthetic */ ListView g(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.j;
    }

    static /* synthetic */ W h(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.k;
    }

    static /* synthetic */ String i(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.u;
    }

    static /* synthetic */ String j(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.v;
    }

    static /* synthetic */ boolean k(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.q;
    }

    static /* synthetic */ View.OnClickListener l(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.t;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(UGCBookDetail uGCBookDetail) {
        this.e(1);
        Author author = uGCBookDetail.getAuthor();
        UGCBookDetail$UGCBookContainer[] arruGCBookDetail$UGCBookContainer = uGCBookDetail.getBooks();
        if (arruGCBookDetail$UGCBookContainer == null || arruGCBookDetail$UGCBookContainer.length == 0) {
            if (author != null) {
                this.y = author.getScaleAvatar();
            }
        } else {
            this.y = uGCBookDetail.getBooks()[0].getBook().getFullCover();
        }
        this.x = uGCBookDetail.getShareLink();
        this.u = uGCBookDetail.getTitle();
        this.v = uGCBookDetail.getDesc();
        if (author != null) {
            this.g.setImageUrl(author.getScaleAvatar());
            this.b.setText(author.getNickname());
        }
        if (am.g()) {
            this.x = this.x + "?sharer=" + am.e().getUser().getId();
        }
        this.a.setText(t.e((Date) uGCBookDetail.getCreated()));
        this.c.setText(this.u);
        this.e.setText(this.v);
        this.e.post((Runnable) ((Object) new p(this)));
        this.f.setText(String.valueOf(uGCBookDetail.getCollectorCount()));
        this.k.a(uGCBookDetail.getBooks());
    }

    private void b() {
        this.e(0);
        r r2 = new r(this, 0);
        Object[] arrobject = new String[]{this.o};
        r2.b(arrobject);
    }

    private void e(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.j.setVisibility(View.VISIBLE);
                this.l.setVisibility(View.GONE);
                this.m.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.j.setVisibility(View.GONE);
                this.l.setVisibility(View.VISIBLE);
                this.m.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.j.setVisibility(View.GONE);
        this.l.setVisibility(View.GONE);
        this.m.setVisibility(View.VISIBLE);
    }

    public final void a(int n2) {
        T.a(this, this.u, this.w, this.x, this.y, n2, (PlatformActionListener) ((Object) new o(this)));
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493230:
        }
        this.b();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903138);
        com.clilystudio.netbook.event.i.a().a(this);
        if (a.a(this.getIntent())) {
            List<String> list = this.getIntent().getData().getPathSegments();
            this.o = list.get(-1 + list.size());
        } else {
            this.o = this.getIntent().getStringExtra("book_id");
        }
        this.p = this.getIntent().getBooleanExtra("my_list", false);
        this.q = this.getIntent().getBooleanExtra("is_draft", false);
        String string = this.p ? "\u7f16\u8f91" : "\u6536\u85cf";
        this.a("\u4e66\u5355\u8be6\u60c5", string, (aa) new i(this));
        this.j = (ListView) this.findViewById(2131492924);
        this.l = this.findViewById(2131493085);
        this.m = this.findViewById(2131493230);
        this.m.setOnClickListener(this);
        View view = LayoutInflater.from(this).inflate(2130903413, (ViewGroup) this.j, false);
        this.g = (SmartImageView) view.findViewById(2131492899);
        this.a = (TextView) view.findViewById(2131494029);
        this.b = (TextView) view.findViewById(2131494028);
        this.c = (TextView) view.findViewById(2131494024);
        this.e = (TextView) view.findViewById(2131494025);
        this.f = (TextView) view.findViewById(2131494030);
        this.i = (ImageButton) view.findViewById(2131494026);
        this.i.setOnClickListener(this.t);
        this.h = (TextView) view.findViewById(2131494027);
        this.h.setOnClickListener((View.OnClickListener) ((Object) new k(this)));
        this.n = this.findViewById(2131493231);
        this.n.setOnClickListener((View.OnClickListener) ((Object) new l(this)));
        this.j.addHeaderView(view, null, false);
        this.k = new W(this.getLayoutInflater());
        this.j.setAdapter(this.k);
        View view2 = this.getLayoutInflater().inflate(2130903414, null);
        this.j.addFooterView(view2);
        this.j.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new m(this)));
        UGCNewCollection uGCNewCollection = (UGCNewCollection) this.getIntent().getSerializableExtra("modify_update");
        if (uGCNewCollection == null) {
            this.b();
            return;
        }
        this.s = (Author) this.getIntent().getSerializableExtra("my_author");
        UGCBookDetail uGCBookDetail = new UGCBookDetail();
        uGCBookDetail.setTitle(uGCNewCollection.getTitle());
        uGCBookDetail.setDesc(uGCNewCollection.getDesc());
        List<BookSummary> list = uGCNewCollection.getBooks();
        UGCBookDetail$UGCBookContainer[] arruGCBookDetail$UGCBookContainer = new UGCBookDetail$UGCBookContainer[list.size()];
        for (int i2 = 0; i2 < list.size(); ++i2) {
            BookSummary bookSummary = list.get(i2);
            UGCBookDetail$UGCBookContainer uGCBookDetail$UGCBookContainer = new UGCBookDetail$UGCBookContainer();
            UGCBookDetail$UGCBookContainer$UGCBookItem uGCBookDetail$UGCBookContainer$UGCBookItem = new UGCBookDetail$UGCBookContainer$UGCBookItem();
            uGCBookDetail$UGCBookContainer$UGCBookItem.set_id(bookSummary.getId());
            uGCBookDetail$UGCBookContainer$UGCBookItem.setCover(bookSummary.getCover());
            uGCBookDetail$UGCBookContainer$UGCBookItem.setTitle(bookSummary.getTitle());
            uGCBookDetail$UGCBookContainer$UGCBookItem.setAuthor(bookSummary.getAuthor());
            uGCBookDetail$UGCBookContainer$UGCBookItem.setLatelyFollower(bookSummary.getLatelyFollower());
            uGCBookDetail$UGCBookContainer$UGCBookItem.setWordCount(bookSummary.getWordCount());
            uGCBookDetail$UGCBookContainer.setBook(uGCBookDetail$UGCBookContainer$UGCBookItem);
            uGCBookDetail$UGCBookContainer.setComment(bookSummary.getAppendComment());
            arruGCBookDetail$UGCBookContainer[i2] = uGCBookDetail$UGCBookContainer;
        }
        uGCBookDetail.setBooks(arruGCBookDetail$UGCBookContainer);
        this.r = uGCBookDetail;
        if (this.s != null) {
            this.r.setAuthor(this.s);
        }
        this.a(this.r);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    @com.squareup.a.l
    public void onUgcDraftEvent(E e2) {
        this.finish();
    }
}
