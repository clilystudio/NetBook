package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.W;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.T;
import com.squareup.a.b;

import java.util.List;

public class UGCDetailActivity extends BaseActivity
        implements View.OnClickListener {
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
    private View.OnClickListener t = new j(this);
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;

    private void a(UGCBookDetail paramUGCBookDetail) {
        e(1);
        Author localAuthor = paramUGCBookDetail.getAuthor();
        UGCBookDetail.UGCBookContainer[] arrayOfUGCBookContainer = paramUGCBookDetail.getBooks();
        if ((arrayOfUGCBookContainer == null) || (arrayOfUGCBookContainer.length == 0))
            if (localAuthor == null) ;
        for (this.y = localAuthor.getScaleAvatar(); ; this.y = paramUGCBookDetail.getBooks()[0].getBook().getFullCover()) {
            this.x = paramUGCBookDetail.getShareLink();
            this.u = paramUGCBookDetail.getTitle();
            this.v = paramUGCBookDetail.getDesc();
            if (localAuthor != null) {
                this.g.setImageUrl(localAuthor.getScaleAvatar());
                this.b.setText(localAuthor.getNickname());
            }
            if (am.g())
                this.x = (this.x + "?sharer=" + am.e().getUser().getId());
            this.a.setText(t.e(paramUGCBookDetail.getCreated()));
            this.c.setText(this.u);
            this.e.setText(this.v);
            this.e.post(new p(this));
            this.f.setText(String.valueOf(paramUGCBookDetail.getCollectorCount()));
            this.k.a(paramUGCBookDetail.getBooks());
            return;
        }
    }

    private void b() {
        e(0);
        r localr = new r(this, 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.o;
        localr.b(arrayOfString);
    }

    private void e(int paramInt) {
        switch (paramInt) {
            default:
                return;
            case 1:
                this.j.setVisibility(0);
                this.l.setVisibility(8);
                this.m.setVisibility(8);
                return;
            case 0:
                this.j.setVisibility(8);
                this.l.setVisibility(0);
                this.m.setVisibility(8);
                return;
            case 2:
        }
        this.j.setVisibility(8);
        this.l.setVisibility(8);
        this.m.setVisibility(0);
    }

    public final void a(int paramInt) {
        T.a(this, this.u, this.w, this.x, this.y, paramInt, new o(this));
    }

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131493230:
        }
        b();
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903138);
        com.clilystudio.netbook.event.i.a().a(this);
        if (a.a(getIntent())) {
            List localList2 = getIntent().getData().getPathSegments();
            this.o = ((String) localList2.get(-1 + localList2.size()));
            this.p = getIntent().getBooleanExtra("my_list", false);
            this.q = getIntent().getBooleanExtra("is_draft", false);
            if (!this.p)
                break label658;
        }
        UGCBookDetail localUGCBookDetail;
        UGCBookDetail.UGCBookContainer[] arrayOfUGCBookContainer;
        label658:
        for (String str = "编辑"; ; str = "收藏") {
            a("书单详情", str, new i(this));
            this.j = ((ListView) findViewById(2131492924));
            this.l = findViewById(2131493085);
            this.m = findViewById(2131493230);
            this.m.setOnClickListener(this);
            View localView1 = LayoutInflater.from(this).inflate(2130903413, this.j, false);
            this.g = ((SmartImageView) localView1.findViewById(2131492899));
            this.a = ((TextView) localView1.findViewById(2131494029));
            this.b = ((TextView) localView1.findViewById(2131494028));
            this.c = ((TextView) localView1.findViewById(2131494024));
            this.e = ((TextView) localView1.findViewById(2131494025));
            this.f = ((TextView) localView1.findViewById(2131494030));
            this.i = ((ImageButton) localView1.findViewById(2131494026));
            this.i.setOnClickListener(this.t);
            this.h = ((TextView) localView1.findViewById(2131494027));
            this.h.setOnClickListener(new k(this));
            this.n = findViewById(2131493231);
            this.n.setOnClickListener(new l(this));
            this.j.addHeaderView(localView1, null, false);
            this.k = new W(getLayoutInflater());
            this.j.setAdapter(this.k);
            View localView2 = getLayoutInflater().inflate(2130903414, null);
            this.j.addFooterView(localView2);
            this.j.setOnItemClickListener(new m(this));
            UGCNewCollection localUGCNewCollection = (UGCNewCollection) getIntent().getSerializableExtra("modify_update");
            if (localUGCNewCollection == null)
                break label705;
            this.s = ((Author) getIntent().getSerializableExtra("my_author"));
            localUGCBookDetail = new UGCBookDetail();
            localUGCBookDetail.setTitle(localUGCNewCollection.getTitle());
            localUGCBookDetail.setDesc(localUGCNewCollection.getDesc());
            List localList1 = localUGCNewCollection.getBooks();
            arrayOfUGCBookContainer = new UGCBookDetail.UGCBookContainer[localList1.size()];
            for (int i1 = 0; i1 < localList1.size(); i1++) {
                BookSummary localBookSummary = (BookSummary) localList1.get(i1);
                UGCBookDetail.UGCBookContainer localUGCBookContainer = new UGCBookDetail.UGCBookContainer();
                UGCBookDetail.UGCBookContainer.UGCBookItem localUGCBookItem = new UGCBookDetail.UGCBookContainer.UGCBookItem();
                localUGCBookItem.set_id(localBookSummary.getId());
                localUGCBookItem.setCover(localBookSummary.getCover());
                localUGCBookItem.setTitle(localBookSummary.getTitle());
                localUGCBookItem.setAuthor(localBookSummary.getAuthor());
                localUGCBookItem.setLatelyFollower(localBookSummary.getLatelyFollower());
                localUGCBookItem.setWordCount(localBookSummary.getWordCount());
                localUGCBookContainer.setBook(localUGCBookItem);
                localUGCBookContainer.setComment(localBookSummary.getAppendComment());
                arrayOfUGCBookContainer[i1] = localUGCBookContainer;
            }
            this.o = getIntent().getStringExtra("book_id");
            break;
        }
        localUGCBookDetail.setBooks(arrayOfUGCBookContainer);
        this.r = localUGCBookDetail;
        if (this.s != null)
            this.r.setAuthor(this.s);
        a(this.r);
        return;
        label705:
        b();
    }

    protected void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    @com.squareup.a.l
    public void onUgcDraftEvent(E paramE) {
        finish();
    }
}

