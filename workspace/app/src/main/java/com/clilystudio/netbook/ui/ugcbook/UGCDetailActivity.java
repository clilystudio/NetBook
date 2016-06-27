package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.cd;
import com.clilystudio.netbook.widget.CoverView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    private com.clilystudio.netbook.util.W<UGCBookDetail.UGCBookContainer> k;
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
        this.t = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCDetailActivity.d(UGCDetailActivity.this).setMaxLines(Integer.MAX_VALUE);
                UGCDetailActivity.d(UGCDetailActivity.this).setEllipsize(null);
                UGCDetailActivity.e(UGCDetailActivity.this).setVisibility(View.GONE);
                UGCDetailActivity.d(UGCDetailActivity.this).setClickable(false);
            }
        };
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
            for (UGCBookDetail.UGCBookContainer uGCBookDetail$UGCBookContainer : uGCBookDetail.getBooks()) {
                BookSummary bookSummary = new BookSummary();
                UGCBookDetail.UGCBookContainer.UGCBookItem uGCBookDetail$UGCBookContainer$UGCBookItem = uGCBookDetail$UGCBookContainer.getBook();
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

    static /* synthetic */ com.clilystudio.netbook.util.W<UGCBookDetail.UGCBookContainer> h(UGCDetailActivity uGCDetailActivity) {
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
        UGCBookDetail.UGCBookContainer[] arruGCBookDetail$UGCBookContainer = uGCBookDetail.getBooks();
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
        // share book
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.load_error_view:
        }
        this.b();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_ugcbook_detail);
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
        this.j = (ListView) this.findViewById(R.id.list);
        this.l = this.findViewById(R.id.pb_loading);
        this.m = this.findViewById(R.id.load_error_view);
        this.m.setOnClickListener(this);
        View view = LayoutInflater.from(this).inflate(R.layout.ugcbook_detail_header, (ViewGroup) this.j, false);
        this.g = (SmartImageView) view.findViewById(R.id.avatar);
        this.a = (TextView) view.findViewById(R.id.author_time);
        this.b = (TextView) view.findViewById(R.id.author_info);
        this.c = (TextView) view.findViewById(R.id.list_title);
        this.e = (TextView) view.findViewById(R.id.list_comment);
        this.f = (TextView) view.findViewById(R.id.list_fav_count);
        this.i = (ImageButton) view.findViewById(R.id.ugcbook_more);
        this.i.setOnClickListener(this.t);
        this.h = (TextView) view.findViewById(R.id.ugcbook_share);
        this.h.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCDetailActivity.f(UGCDetailActivity.this);
            }
        });
        this.n = this.findViewById(R.id.share_bottom);
        this.n.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCDetailActivity.f(UGCDetailActivity.this);
            }
        });
        this.j.addHeaderView(view, null, false);
        this.k = new com.clilystudio.netbook.util.W<UGCBookDetail.UGCBookContainer>(this.getLayoutInflater(),R.layout.list_item_ugcbook_detail){

            @Override
            protected void a(int var1, UGCBookDetail.UGCBookContainer var2) {
                UGCBookDetail.UGCBookContainer.UGCBookItem ugcBookItem;
                if (var2.getComment() != null && var2.getComment().trim().length() > 6) {
                    this.a(2, var2.getComment());
                    this.a(7, false);
                } else {
                    this.a(7, true);
                }
                if ((ugcBookItem = var2.getBook()) != null) {
                    this.a(0, ugcBookItem.getTitle());
                    this.a(1, String.valueOf(ugcBookItem.getLatelyFollower()));
                    this.a(3, CoverView.class).setImageUrl(ugcBookItem.getFullCover(), R.drawable.cover_default);
                    this.a(4, ugcBookItem.getAuthor());
                    long l = ugcBookItem.getWordCount();
                    if (l <= 0) {
                        this.a(5, true);
                        this.a(6, true);
                        this.a(8, true);
                        return;
                    }
                    String string = " \u5b57";
                    if (l > 10000) {
                        l /= 10000;
                        string = " \u4e07\u5b57";
                    } else if (l > 100) {
                        l /= 100;
                        string = " \u767e\u5b57";
                    }
                    this.a(5, "" + l);
                    this.a(6, string);
                    this.a(5, false);
                    this.a(6, false);
                    this.a(8, false);
                }
          }

            @Override
            protected int[] a() {
                return new int[]{R.id.title, R.id.message_count, R.id.desc, R.id.avatar, R.id.author, R.id.message_textcount, R.id.message_textunit, R.id.desc_layout, R.id.message_separate};
            }
        };
        this.j.setAdapter(this.k);
        View view2 = this.getLayoutInflater().inflate(R.layout.ugcbook_listview_footer, null);
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
        UUGCBookDetail.UGCBookContainer[] arruGCBookDetail$UGCBookContainer = new UGCBookDetail.UGCBookContainer[list.size()];
        for (int i2 = 0; i2 < list.size(); ++i2) {
            BookSummary bookSummary = list.get(i2);
            UGCBookDetail.UGCBookContainer uGCBookDetail$UGCBookContainer = new UGCBookDetail.UGCBookContainer();
            UGCBookDetail.UGCBookContainer.UGCBookItem uGCBookDetail$UGCBookContainer$UGCBookItem = new UGCBookDetail.UGCBookContainer.UGCBookItem();
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
