package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.AddShelfBooksEvent;
import com.clilystudio.netbook.event.UgcDraftEvent;
import com.clilystudio.netbook.event.UpdateUgcListEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.BaseCallBack;
import com.clilystudio.netbook.ui.ActionBarClickListener;
import com.clilystudio.netbook.ui.user.UserUGCActivity;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.widget.CoverView;
import com.squareup.otto.Subscribe;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import cn.sharesdk.framework.ShareSDK;
import uk.me.lewisdeane.ldialogs.BaseDialog;

public class UGCGuideEditBooksActivity extends BaseActivity implements View.OnClickListener {
    Map<String, String> a = new HashMap<>();
    private View c;
    private BaseDownloadAdapter<BookSummary> e;
    private String f;
    private Author g;
    private boolean h;

    static /* synthetic */ void a(final UGCGuideEditBooksActivity uGCGuideEditBooksActivity, int n) {
        String string;
        Editable editable;
        List<BookSummary> list = MyApplication.getInstance().getUGCNewCollection().getBooks();
        if (list == null || list.size() == 0) {
            return;
        }
        final BookSummary bookSummary = list.get(n);
        View view = uGCGuideEditBooksActivity.getLayoutInflater().inflate(R.layout.ugc_dialog_edit_comment,(ViewGroup)uGCGuideEditBooksActivity.getWindow().getDecorView() , false);
        ((CoverView) view.findViewById(R.id.avatar)).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
        ((TextView) view.findViewById(R.id.title)).setText(bookSummary.getTitle());
        ((TextView) view.findViewById(R.id.author)).setText(bookSummary.getAuthor());
        String text1 = "" + bookSummary.getLatelyFollower();
        ((TextView) view.findViewById(R.id.followcount)).setText(text1);
        long l2 = bookSummary.getWordCount();
        if (l2 > 10000) {
            l2 /= 10000;
            string = " 万字";
        } else if (l2 > 100) {
            l2 /= 100;
            string = " 百字";
        } else {
            string = " 字";
        }
        String text = "" + l2;
        ((TextView) view.findViewById(R.id.wordcount)).setText(text);
        ((TextView) view.findViewById(R.id.wordunit)).setText(string);
        final EditText editText = (EditText) view.findViewById(R.id.comment_field);
        if (bookSummary.getAppendComment() != null && !bookSummary.getAppendComment().equals("")) {
            editText.setText(bookSummary.getAppendComment());
        } else {
            editText.setText(uGCGuideEditBooksActivity.a.get(bookSummary.getId()));
        }
        if ((editable = editText.getText()) != null) {
            Selection.setSelection(editText.getText(), editable.length());
        }
        new BaseDialog.Builder(uGCGuideEditBooksActivity).setView(view).setPositiveButton("保存", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                bookSummary.setAppendComment(editText.getText().toString());
                UGCGuideEditBooksActivity.c(uGCGuideEditBooksActivity);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                uGCGuideEditBooksActivity.a.put(bookSummary.getId(), editText.getText().toString());
            }
        }).create().show();
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                ((InputMethodManager) uGCGuideEditBooksActivity.getSystemService(Context.INPUT_METHOD_SERVICE)).toggleSoftInput(0, 2);
            }
        }, 200);
    }

    static /* synthetic */ void b(final UGCGuideEditBooksActivity uGCGuideEditBooksActivity, int n) {
        final List<BookSummary> list = MyApplication.getInstance().getUGCNewCollection().getBooks();
        if (list == null || list.size() == 0) {
            return;
        }
        final BookSummary bookSummary = list.get(n);
        BaseDialog.Builder h2 = new BaseDialog.Builder(uGCGuideEditBooksActivity);
        h2.setMessage("确认删除本书？");
        h2.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                list.remove(bookSummary);
                UGCGuideEditBooksActivity.c(uGCGuideEditBooksActivity);
            }
        }).
                setNegativeButton(R.string.cancel, null).create().show();
    }

    static /* synthetic */ boolean b(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        if (uGCGuideEditBooksActivity.e.getCount() < 8) {
             com.clilystudio.netbook.util.e.a(uGCGuideEditBooksActivity, String.format(Locale.CHINA,"太少啦，单个书单至少需要%d本小说哦", 8));
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

    static /* synthetic */ String f(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return uGCGuideEditBooksActivity.f;
    }

    static /* synthetic */ Author j(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        return uGCGuideEditBooksActivity.g;
    }

    private void b() {
        UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
        this.e.a(uGCNewCollection.getBooks());
        if (uGCNewCollection.getBooks() != null && uGCNewCollection.getBooks().size() == 0) {
            this.c.setVisibility(View.VISIBLE);
            return;
        }
        this.c.setVisibility(View.GONE);
    }

    @Subscribe
    public void onAddShelfBooks(AddShelfBooksEvent d) {
        BaseLoadingTask<String[], List<BookSummary>> n = new BaseLoadingTask<String[], List<BookSummary>>(this, "正在添加书籍...") {

            @Override
            public List<BookSummary> a(String[]... var1) {
                return ApiServiceProvider.getApiService().a(var1[0]);
            }

            @Override
            public void a(List<BookSummary> list) {
                if (list != null) {
                    UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                    for (BookSummary bookSummary : list) {
                        uGCNewCollection.addBook(bookSummary);
                        bookSummary.setSelected(true);
                    }
                    UGCGuideEditBooksActivity.c(UGCGuideEditBooksActivity.this);
                    return;
                }
                com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "添加书籍失败，请检查网络或重试");
            }
        };
        n.b(new String[][]{d.getBookIds()});
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.collection_add_search: {
                this.startActivity(new Intent(this, UGCGuideAddBookActivity.class));
                return;
            }
            case R.id.collection_add_shelf:
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
        this.setContentView(R.layout.ugc_add_edit_books);
        BusProvider.getInstance().register(this);
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
            this.a("编辑书单", R.string.save, R.string.publish, new ActionBarClickListener() {
                @Override
                public void onTextClick() {
                    if (MyApplication.getInstance().getUGCNewCollection().getBooks().size() == 0) {
                        com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "至少要添加一本书籍才能保存哦");
                        return;
                    }
                    new BaseLoadingTask<Void, ResultStatus>(UGCGuideEditBooksActivity.this, "正在保存到草稿箱...") {
                        @Override
                        public ResultStatus a(Void... var1) {
                            Account account = am.a(UGCGuideEditBooksActivity.this);
                            if (account == null) return null;
                            if (UGCGuideEditBooksActivity.this.f == null)
                                return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                            if (UGCGuideEditBooksActivity.this.f.equals(""))
                                return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                            return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken(), UGCGuideEditBooksActivity.this.f);
                        }

                        @Override
                        public void a(ResultStatus resultStatus) {
                            if (resultStatus == null || !resultStatus.isOk()) {
                                com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "保存失败，请检查网络或重试");
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "已保存到草稿箱");
                            UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                            BusProvider.getInstance().post(new UgcDraftEvent());
                            BusProvider.getInstance().post(new UpdateUgcListEvent(UGCGuideEditBooksActivity.this.f, uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
                            UGCGuideEditBooksActivity.this.finish();
                        }
                    }.b();
                }

                @Override
                public void onIconClick() {
                    procb();
                }
            });
        } else {
            this.a("书单详情", R.string.publish, new BaseCallBack() {
                @Override
                public void a() {
                    procb();
                }
            });
        }
        UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
        uGCNewCollection.setDesc(string);
        uGCNewCollection.setTitle(string2);
        ListView b = (ListView) this.findViewById(R.id.list);
        this.c = this.findViewById(R.id.ugc_add_empty);
        View view = LayoutInflater.from(this).inflate(R.layout.ugc_add_edit_books_header, b, false);
        TextView textView = (TextView) view.findViewById(R.id.collection_title);
        TextView textView2 = (TextView) view.findViewById(R.id.collection_desc);
        textView.setText(string2);
        textView2.setText(string);
        b.addHeaderView(view, null, false);
        view.findViewById(R.id.collection_add_search).setOnClickListener(this);
        view.findViewById(R.id.collection_add_shelf).setOnClickListener(this);
        this.e = new BaseDownloadAdapter<BookSummary>(this.getLayoutInflater(), R.layout.list_item_ucg_book_guide_edit) {

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                CoverView coverView = this.a(0);
                coverView.setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.a(1, bookSummary.getTitle());
                this.a(2, bookSummary.getAuthor());
                this.a(3, "" + bookSummary.getLatelyFollower());
                long l = bookSummary.getWordCount();
                if (l > 0) {
                    String string = " \u5b57";
                    if (l > 10000) {
                        l /= 10000;
                        string = " \u4e07\u5b57";
                    } else if (l > 100) {
                        l /= 100;
                        string = " \u767e\u5b57";
                    }
                    this.a(4, "" + l);
                    this.a(5, string);
                    this.a(4, false);
                    this.a(5, false);
                    this.a(9, false);
                } else {
                    this.a(4, true);
                    this.a(5, true);
                    this.a(9, true);
                }
                if (bookSummary.getAppendComment() != null && bookSummary.getAppendComment().trim().length() > 0) {
                    this.a(6, bookSummary.getAppendComment());
                    this.a(7, true);
                    this.a(8, false);
                    return;
                }
                this.a(7, false);
                this.a(8, true);
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.avatar, R.id.title, R.id.author, R.id.followcount, R.id.wordcount, R.id.wordunit, R.id.comment, R.id.comment_add_layout, R.id.comment_edit_layout, R.id.separate};
            }

            @Override
            public View getView(final int n, View view, ViewGroup viewGroup) {
                View view2 = super.getView(n, view, viewGroup);
                view2.findViewById(R.id.edit_comment).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        UGCGuideEditBooksActivity.a(UGCGuideEditBooksActivity.this, n);
                    }
                });
                view2.findViewById(R.id.comment_add_layout).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        UGCGuideEditBooksActivity.a(UGCGuideEditBooksActivity.this, n);
                    }
                });
                view2.findViewById(R.id.delete_comment).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        UGCGuideEditBooksActivity.b(UGCGuideEditBooksActivity.this, n);
                    }
                });
                this.a(n, view2, this.getItem(n));
                return view2;
            }
        };
        b.setAdapter(this.e);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b();
    }

    private void procb() {
        if (UGCGuideEditBooksActivity.b(UGCGuideEditBooksActivity.this)) {
            new BaseLoadingTask<Void, ResultStatus>(UGCGuideEditBooksActivity.this, R.string.loading) {
                @Override
                public ResultStatus a(Void... var1) {
                    Account account = am.a(UGCGuideEditBooksActivity.this);
                    if (account == null) return null;
                    if (UGCGuideEditBooksActivity.d(UGCGuideEditBooksActivity.this)) {
                        return ApiServiceProvider.getApiService().c(MyApplication.getInstance().getUGCNewCollection(), account.getToken(), UGCGuideEditBooksActivity.this.f);
                    }
                    if (UGCGuideEditBooksActivity.this.f == null)
                        return ApiServiceProvider.getApiService().a(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                    if (UGCGuideEditBooksActivity.this.f.equals(""))
                        return ApiServiceProvider.getApiService().a(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                    return ApiServiceProvider.getApiService().a(MyApplication.getInstance().getUGCNewCollection(), account.getToken(), UGCGuideEditBooksActivity.this.f);
                }

                @Override
                public void a(ResultStatus resultStatus) {
                    Intent intent;
                    if (resultStatus == null || !resultStatus.isOk()) {
                        com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "发布失败");
                        return;
                    }
                    if (UGCGuideEditBooksActivity.d(UGCGuideEditBooksActivity.this)) {
                        com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "发布成功");
                        intent = new Intent(UGCGuideEditBooksActivity.this, UserUGCActivity.class);
                        intent.setFlags(67108864);
                    } else if (UGCGuideEditBooksActivity.this.f != null && !UGCGuideEditBooksActivity.this.f.equals("")) {
                        com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "修改成功");
                        UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                        Intent intent2 = new Intent(this.b(), UGCDetailActivity.class);
                        intent2.putExtra("book_id", UGCGuideEditBooksActivity.this.f);
                        intent2.putExtra("my_list", true);
                        intent2.putExtra("modify_update", uGCNewCollection);
                        intent2.putExtra("my_author", UGCGuideEditBooksActivity.j(UGCGuideEditBooksActivity.this));
                        intent2.setFlags(67108864);
                        BusProvider.getInstance().post(new UpdateUgcListEvent(UGCGuideEditBooksActivity.this.f, uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
                        intent = intent2;
                    } else {
                        com.clilystudio.netbook.util.e.a(UGCGuideEditBooksActivity.this, "发布成功");
                        intent = new Intent(UGCGuideEditBooksActivity.this, UGCMainActivity.class);
                    }
                    UGCGuideEditBooksActivity.this.startActivity(intent);
                }
            }.b();
        }
    }

}
