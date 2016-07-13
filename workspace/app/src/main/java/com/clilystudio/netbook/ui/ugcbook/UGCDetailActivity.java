package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.UgcDraftEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.BaseCallBack;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.squareup.otto.Subscribe;

import java.util.ArrayList;
import java.util.List;

public class UGCDetailActivity extends BaseActivity implements View.OnClickListener {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView e;
    private TextView f;
    private SmartImageView g;
    private ImageButton i;
    private ListView j;
    private BaseDownloadAdapter<UGCBookDetail.UGCBookContainer> k;
    private View l;
    private View m;
    private String o;
    private boolean p;
    private boolean q;
    private UGCBookDetail r;
    private Author s;
    private View.OnClickListener t;

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

    static /* synthetic */ void a(UGCDetailActivity uGCDetailActivity, int n) {
        uGCDetailActivity.e(n);
    }

    static /* synthetic */ boolean a(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.p;
    }

    static /* synthetic */ void b(UGCDetailActivity uGCDetailActivity) {
        if (uGCDetailActivity.r != null) {
            MyApplication myApplication = MyApplication.getInstance();
            UGCBookDetail uGCBookDetail = uGCDetailActivity.r;
            UGCNewCollection uGCNewCollection = new UGCNewCollection();
            uGCNewCollection.setTitle(uGCBookDetail.getTitle());
            uGCNewCollection.setDesc(uGCBookDetail.getDesc());
            ArrayList<BookSummary> arrayList = new ArrayList<>();
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
            myApplication.mUGCNewCollection = uGCNewCollection;
            Intent intent = new Intent(uGCDetailActivity, UGCGuideAddCollectionActivity.class);
            intent.putExtra("ugc_id", uGCDetailActivity.o);
            intent.putExtra("is_draft", uGCDetailActivity.q);
            if (uGCDetailActivity.s != null) {
                intent.putExtra("my_author", uGCDetailActivity.s);
            }
            uGCDetailActivity.startActivity(intent);
            return;
        }
        com.clilystudio.netbook.util.e.a((Context) uGCDetailActivity, "书单信息未加载，请检查网络或稍后再试");
    }

    static /* synthetic */ void b(UGCDetailActivity uGCDetailActivity, UGCBookDetail uGCBookDetail) {
        uGCDetailActivity.a(uGCBookDetail);
    }

    static /* synthetic */ void c(final UGCDetailActivity uGCDetailActivity) {
        Account account = am.a(uGCDetailActivity);
        if (account != null) {
            BaseAsyncTask<String, Void, ResultStatus> q2 = new BaseAsyncTask<String, Void, ResultStatus>() {

                @Override
                protected ResultStatus doInBackground(String... params) {
                    return ApiServiceProvider.getApiService().D(params[0], params[1]);
                }

                @Override
                protected void onPostExecute(ResultStatus resultStatus) {
                    super.onPostExecute(resultStatus);
                    if (resultStatus != null && resultStatus.isOk()) {
                        com.clilystudio.netbook.util.e.a(uGCDetailActivity, "已收藏");
                        return;
                    }
                    com.clilystudio.netbook.util.e.a(uGCDetailActivity, "收藏失败，请检查网络或稍后再试");
                }
            };
            q2.b(account.getToken(), uGCDetailActivity.o);
        }
    }

    static /* synthetic */ TextView d(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.e;
    }

    static /* synthetic */ ImageButton e(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.i;
    }

    static /* synthetic */ ListView g(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.j;
    }

    static /* synthetic */ BaseDownloadAdapter<UGCBookDetail.UGCBookContainer> h(UGCDetailActivity uGCDetailActivity) {
        return uGCDetailActivity.k;
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
        String u = uGCBookDetail.getTitle();
        String v = uGCBookDetail.getDesc();
        if (author != null) {
            this.g.setImageUrl(author.getScaleAvatar());
            this.b.setText(author.getNickname());
        }
        this.a.setText(DateTimeUtil.e(uGCBookDetail.getCreated()));
        this.c.setText(u);
        this.e.setText(v);
        this.e.post(new Runnable() {
            @Override
            public void run() {
                if (UGCDetailActivity.d(UGCDetailActivity.this).getLineCount() > 5) {
                    UGCDetailActivity.e(UGCDetailActivity.this).setVisibility(View.VISIBLE);
                    UGCDetailActivity.d(UGCDetailActivity.this).setEllipsize(TextUtils.TruncateAt.END);
                    UGCDetailActivity.d(UGCDetailActivity.this).setClickable(true);
                    UGCDetailActivity.d(UGCDetailActivity.this).setOnClickListener(UGCDetailActivity.l(UGCDetailActivity.this));
                }
            }
        });
        this.f.setText(String.valueOf(uGCBookDetail.getCollectorCount()));
        this.k.setDatas(uGCBookDetail.getBooks());
    }

    private void b() {
        this.e(0);
        BaseAsyncTask<String, Void, UGCBookDetailRoot> r2 = new BaseAsyncTask<String, Void, UGCBookDetailRoot>() {

            @Override
            protected UGCBookDetailRoot doInBackground(String... params) {
                if (!UGCDetailActivity.k(UGCDetailActivity.this)) return ApiServiceProvider.getApiService().U(params[0]);
                Account account = am.a(UGCDetailActivity.this);
                if (account == null) return null;
                return ApiServiceProvider.getApiService().C(account.getToken(), params[0]);
            }

            @Override
            protected void onPostExecute(UGCBookDetailRoot uGCBookDetailRoot) {
                super.onPostExecute(uGCBookDetailRoot);
                if (uGCBookDetailRoot != null && uGCBookDetailRoot.isOk() && uGCBookDetailRoot.getBookList() != null) {
                    UGCBookDetail uGCBookDetail = uGCBookDetailRoot.getBookList();
                    UGCDetailActivity.a(UGCDetailActivity.this, uGCBookDetail);
                    UGCDetailActivity.a(UGCDetailActivity.this, uGCBookDetail.getAuthor());
                    UGCDetailActivity.b(UGCDetailActivity.this, uGCBookDetail);
                    return;
                }
                UGCDetailActivity.a(UGCDetailActivity.this, 2);
            }
        };
        r2.b(this.o);
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
        BusProvider.getInstance().register(this);
        if (com.clilystudio.netbook.hpay100.a.a.a(this.getIntent())) {
            List<String> list = this.getIntent().getData().getPathSegments();
            this.o = list.get(-1 + list.size());
        } else {
            this.o = this.getIntent().getStringExtra("book_id");
        }
        this.p = this.getIntent().getBooleanExtra("my_list", false);
        this.q = this.getIntent().getBooleanExtra("is_draft", false);
        String string = this.p ? "\u7f16\u8f91" : "\u6536\u85cf";
        this.a("书单详情", string, new BaseCallBack() {
            @Override
            public void a() {
                if (UGCDetailActivity.a(UGCDetailActivity.this)) {
                    UGCDetailActivity.b(UGCDetailActivity.this);
                    return;
                }
                UGCDetailActivity.c(UGCDetailActivity.this);
            }
        });
        this.j = (ListView) this.findViewById(R.id.list);
        this.l = this.findViewById(R.id.pb_loading);
        this.m = this.findViewById(R.id.load_error_view);
        this.m.setOnClickListener(this);
        View view = LayoutInflater.from(this).inflate(R.layout.ugcbook_detail_header, this.j, false);
        this.g = (SmartImageView) view.findViewById(R.id.avatar);
        this.a = (TextView) view.findViewById(R.id.author_time);
        this.b = (TextView) view.findViewById(R.id.author_info);
        this.c = (TextView) view.findViewById(R.id.list_title);
        this.e = (TextView) view.findViewById(R.id.list_comment);
        this.f = (TextView) view.findViewById(R.id.list_fav_count);
        this.i = (ImageButton) view.findViewById(R.id.ugcbook_more);
        this.i.setOnClickListener(this.t);
        this.j.addHeaderView(view, null, false);
        this.k = new BaseDownloadAdapter<UGCBookDetail.UGCBookContainer>(this.getLayoutInflater(), R.layout.list_item_ugcbook_detail) {

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
                    CoverView coverView = this.a(3);
                    coverView.setImageUrl(ugcBookItem.getFullCover(), R.drawable.cover_default);
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
            protected int[] getViewIds() {
                return new int[]{R.id.title, R.id.message_count, R.id.desc, R.id.avatar, R.id.author, R.id.message_textcount, R.id.message_textunit, R.id.desc_layout, R.id.message_separate};
            }
        };
        this.j.setAdapter(this.k);
        View view2 = this.getLayoutInflater().inflate(R.layout.ugcbook_listview_footer, (ViewGroup)getWindow().getDecorView(), false);
        this.j.addFooterView(view2);
        this.j.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                UGCBookDetail.UGCBookContainer uGCBookDetail$UGCBookContainer;
                int n2 = position - UGCDetailActivity.g(UGCDetailActivity.this).getHeaderViewsCount();
                if (n2 >= 0 && n2 < UGCDetailActivity.h(UGCDetailActivity.this).getCount() && (uGCBookDetail$UGCBookContainer = UGCDetailActivity.h(UGCDetailActivity.this).getItem(n2)) != null && uGCBookDetail$UGCBookContainer.getBook() != null) {
                    Intent intent = new Intent(UGCDetailActivity.this, BookInfoActivity.class);
                    intent.putExtra("book_id", uGCBookDetail$UGCBookContainer.getBook().get_id());
                    UGCDetailActivity.this.startActivity(intent);
                }
            }
        });
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
        UGCBookDetail.UGCBookContainer[] arruGCBookDetail$UGCBookContainer = new UGCBookDetail.UGCBookContainer[list.size()];
        for (int i2 = 0; i2 < list.size(); ++i2) {
            BookSummary bookSummary = list.get(i2);
            UGCBookDetail.UGCBookContainer bookContainer = new UGCBookDetail.UGCBookContainer();
            UGCBookDetail.UGCBookContainer.UGCBookItem ugcBookItem = new UGCBookDetail.UGCBookContainer.UGCBookItem();
            ugcBookItem.set_id(bookSummary.getId());
            ugcBookItem.setCover(bookSummary.getCover());
            ugcBookItem.setTitle(bookSummary.getTitle());
            ugcBookItem.setAuthor(bookSummary.getAuthor());
            ugcBookItem.setLatelyFollower(bookSummary.getLatelyFollower());
            ugcBookItem.setWordCount(bookSummary.getWordCount());
            bookContainer.setBook(ugcBookItem);
            bookContainer.setComment(bookSummary.getAppendComment());
            arruGCBookDetail$UGCBookContainer[i2] = bookContainer;
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
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onUgcDraftEvent(UgcDraftEvent e2) {
        this.finish();
    }
}
