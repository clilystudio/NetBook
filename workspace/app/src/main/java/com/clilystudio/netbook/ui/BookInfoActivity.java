package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.BookAddedEvent;
import com.clilystudio.netbook.event.BookRemovedEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.util.BookInfoUtil;
import com.clilystudio.netbook.util.BookSourceManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.TagsLayout;
import com.squareup.otto.Subscribe;

public class BookInfoActivity extends BaseActivity implements View.OnClickListener {
    private View b;
    private View c;
    private View e;
    private View f;
    private View g;
    private String mBookId;
    private boolean i;
    private boolean j;
    private BookInfo k;
    private Handler m;

    public BookInfoActivity() {
        this.m = new Handler() {

            @Override
            public void handleMessage(Message msg) {
                BookInfoActivity.this.i = true;
                BookInfoActivity.this.g();
            }
        };
    }

    public static Intent getIntent(Context context, String string) {
        return new IntentBuilder().put(context, BookInfoActivity.class).put("book_id", string).put("open_type", 0).build();
    }

    public static Intent a(Context context, String string, int n) {
        return new IntentBuilder().put(context, BookInfoActivity.class).put("book_id", string).put("open_type", n).build();
    }

    static void a(BookInfoActivity bookInfoActivity) {
        if (bookInfoActivity.k != null) {
            SourceRecord sourceRecord;
            BookInfoUtil.bookId = bookInfoActivity.mBookId;
            BookInfoUtil.title = bookInfoActivity.k.getTitle();
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(bookInfoActivity.mBookId);
            if (bookReadRecord != null) {
                BookInfoUtil.source = bookReadRecord.getDownloadedSource();
                BookInfoUtil.tocId = bookReadRecord.getTocId();
                BookInfoUtil.readMode = bookReadRecord.getReadMode();
            }
            if ((sourceRecord = SourceRecord.get(bookInfoActivity.mBookId, BookInfoUtil.source)) != null) {
                BookInfoUtil.sourceId = sourceRecord.getSourceId();
                BookInfoUtil.sougoMd = sourceRecord.getSogouMd();
            }
            if (!bookInfoActivity.i) {
                bookInfoActivity.h();
            }
            new BookDownloadManager(bookInfoActivity).startDownload(BookReadRecord.getOnShelf(bookInfoActivity.mBookId));
        }
    }

    static void f(final BookInfoActivity bookInfoActivity) {
        bookInfoActivity.getActionBar().setTitle(bookInfoActivity.k.getTitle());
        ((CoverView) bookInfoActivity.findViewById(R.id.book_detail_info_cover)).setImageUrl(bookInfoActivity.k.getFullCoverLarge(), R.drawable.cover_default);
        ((TextView) bookInfoActivity.findViewById(R.id.book_detail_info_title)).setText(bookInfoActivity.k.getTitle());
        TextView textView = (TextView) bookInfoActivity.findViewById(R.id.author);
        textView.setText(bookInfoActivity.k.getAuthor());
        textView.setTextColor(bookInfoActivity.getResources().getColor(R.color.font_orange));
        bookInfoActivity.findViewById(R.id.author_and_type).setOnClickListener(bookInfoActivity);
        String string = bookInfoActivity.k.getCat() != null ? bookInfoActivity.k.getCat() : "-";
        String text = "  |  " + string;
        ((TextView) bookInfoActivity.findViewById(R.id.type)).setText(text);
        TextView textView2 = (TextView) bookInfoActivity.findViewById(R.id.word_count);
        int n2 = bookInfoActivity.k.getWordCount();
        if (n2 > 0) {
            textView2.setVisibility(View.VISIBLE);
            textView2.setText(String.format("  |  %s字", CommonUtil.getWordCount(n2)));
        } else {
            textView2.setVisibility(View.GONE);
        }
        if (bookInfoActivity.k.getUpdated() != null) {
            String string2 = bookInfoActivity.k.getIsSerial() ? DateTimeUtil.e(bookInfoActivity.k.getUpdated()) : "完结";
            ((TextView) bookInfoActivity.findViewById(R.id.update_time)).setText(string2);
        }
        TextView followersTV = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_followers);
        if (followersTV != null) {
            String text1 = Integer.toString(bookInfoActivity.k.getLatelyFollower());
            followersTV.setText(text1);
        }
        TextView textView3 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_retention);
        String text1 = "-";
        if (bookInfoActivity.k.getRetentionRatio() != 0.0f) {
            text1 = "" + bookInfoActivity.k.getRetentionRatio() + "%";
        }
        textView3.setText(text1);
        TextView textView4 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_words);
        String text2 = "-";
        if (bookInfoActivity.k.getSerializeWordCount() >= 0) {
            text2 = Integer.toString(bookInfoActivity.k.getSerializeWordCount());
        } else {
            textView4.setText("-");
        }
        textView4.setText(text2);
        bookInfoActivity.findViewById(R.id.book_detail_info_topic_layout).setOnClickListener(bookInfoActivity);
        String string3 = bookInfoActivity.k.getTitle();
        String string4 = string3.length() > 10 ? string3.substring(0, 10) + "..." : string3;
        TextView topicTV = (TextView) bookInfoActivity.findViewById(R.id.book_info_topic);
        if (topicTV != null) {
            String text3 = string4 + "的社区";
            topicTV.setText(text3);
        }
        TextView countTV = (TextView) bookInfoActivity.findViewById(R.id.topic_count);
        if (countTV != null) {
            String text3 = "共有 " + bookInfoActivity.k.getPostCount() + " 个帖子";
            countTV.setText(text3);
        }
        final TextView textView5 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_desc);
        if (textView5 != null && bookInfoActivity.k.getLongIntro() != null) {
            textView5.setText(bookInfoActivity.k.getLongIntro());
            textView5.post(new Runnable() {
                @Override
                public void run() {
                    if (textView5.getLineCount() > 4) {
                        textView5.setMaxLines(4);
                        textView5.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                if (bookInfoActivity.j) {
                                    textView5.setMaxLines(4);
                                } else {
                                    textView5.setMaxLines(Integer.MAX_VALUE);
                                }
                                bookInfoActivity.j = !bookInfoActivity.j;
                            }
                        });
                    }
                }
            });
        } else {
            textView5.setText("暂无");
        }
        bookInfoActivity.g();
        bookInfoActivity.a(bookInfoActivity.k.getTags());
        bookInfoActivity.f();
    }

    private void a(int n) {
        View view = this.getActionBar().getCustomView();
        TextView textView = null;
        if (view != null) {
            textView = (TextView) view.findViewById(R.id.actionbar_custom_right_text);
        }
        if (textView == null) {
            return;
        }
        switch (n) {
            default: {
                return;
            }
            case 0:
            case 3:
            case 4: {
                textView.setEnabled(true);
                textView.setText(R.string.book_info_download);
                textView.setTextColor(this.getResources().getColor(R.color.white_80));
                return;
            }
            case 2: {
                textView.setEnabled(false);
                textView.setText("缓存中...");
                textView.setTextColor(this.getResources().getColor(R.color.book_info_dl));
                return;
            }
            case 1:
            case 5:
        }
        textView.setEnabled(false);
        textView.setText("等待中...");
        textView.setTextColor(this.getResources().getColor(R.color.book_info_dl));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        View view = this.findViewById(R.id.dis_post_detail_talk2);
        TextView textView = (TextView) this.findViewById(R.id.book_detail_info_search_text);
        View view2 = this.g;
        view2.setBackgroundResource(R.drawable.book_detail_info_btn_gray);
        int n3 = bl ? R.string.book_info_searching : R.string.book_info_search;
        textView.setText(n3);
        view.setVisibility(bl ? View.GONE : View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(String[] arrstring) {
        if (arrstring == null || arrstring.length == 0) {
            return;
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = this.findViewById(R.id.book_info_tags_root);
        view.setVisibility(View.VISIBLE);
        int n3 = CommonUtil.getDipSize(this, 16.0f);
        TagsLayout tagsLayout = (TagsLayout) view.findViewById(R.id.tags_layout);
        for (String anArrstring : arrstring) {
            TextView textView = (TextView) layoutInflater.inflate(R.layout.book_info_tags_item, tagsLayout, false).findViewById(R.id.tag_text);
            final String string = anArrstring;
            textView.setText(string);
            textView.setBackgroundResource(R.drawable.bg_book_info_tag0_dark);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    startActivity(new IntentBuilder().put(BookInfoActivity.this, BookTagListActivity.class).put("TAG_LIST_KEY", string).build());
                }
            });
            tagsLayout.addView(textView, new ViewGroup.LayoutParams(n3, n3));
        }
    }

    private void e(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                this.b.setVisibility(View.VISIBLE);
                this.c.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.b.setVisibility(View.GONE);
                this.c.setVisibility(View.VISIBLE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.GONE);
        this.e.setVisibility(View.VISIBLE);
    }

    private void f() {
        View view = this.findViewById(R.id.book_info_ad_view);
        view.setVisibility(View.GONE);
    }

    private void g() {
        int n2 = this.f.getPaddingLeft();
        int n3 = this.f.getPaddingTop();
        int n4 = this.f.getPaddingRight();
        int n5 = this.f.getPaddingBottom();
        View view = this.f;
        view.setBackgroundResource(R.drawable.book_detail_info_btn_gray);
        this.f.setPadding(n2, n3, n4, n5);
        TextView textView = (TextView) this.findViewById(R.id.book_detail_info_add_text);
        ImageView imageView = (ImageView) this.findViewById(R.id.book_detail_info_add_iv);
        String string = this.i ? this.getString(R.string.book_info_remove_book) : this.getString(R.string.book_info_add_book);
        textView.setText(string);
        int n7 = this.i ? R.drawable.book_detail_info_del_img : R.drawable.book_detail_info_add_img;
        imageView.setImageResource(n7);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void h() {
        String string;
        if (this.i) {
            BookReadRecord.deleteAndSync(this.mBookId);
            CommonUtil.syncBookShelf(this.mBookId, BookSyncRecord.BookModifyType.SHELF_REMOVE);
            String string2 = this.getString(R.string.remove_book_event);
            Object[] arrobject = new Object[]{this.k.getTitle()};
            string = String.format(string2, arrobject);
        } else {
            BookReadRecord.create(this.k);
            CommonUtil.syncBookShelf(this.mBookId, BookSyncRecord.BookModifyType.SHELF_ADD);
            String string3 = this.getString(R.string.add_book_event);
            Object[] arrobject = new Object[]{this.k.getTitle()};
            String string4 = String.format(string3, arrobject);
            string = string4;
        }
        ToastUtil.showShortToast(this, string);
    }

    private void j() {
        this.e(0);
        BaseAsyncTask<String, Void, BookInfo> aI2 = new BaseAsyncTask<String, Void, BookInfo>() {

            @Override
            protected BookInfo doInBackground(String... params) {
                return ApiServiceProvider.getApiService().getBookInfo(params[0]);
            }

            @Override
            protected void onPostExecute(BookInfo bookInfo) {
                super.onPostExecute(bookInfo);
                if (isFinishing()) return;
                if (bookInfo != null) {
                    BookInfoActivity.this.e(1);
                    BookInfoActivity.this.k = bookInfo;
                    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
                    fragmentTransaction.replace(R.id.content_frame_relate, RelateBooksFragment.a(mBookId));
                    fragmentTransaction.replace(R.id.content_frame_ugc, RelateUgcFragment.a(mBookId));
                    fragmentTransaction.commitAllowingStateLoss();
                    BookInfoActivity.this.k();
                    BookInfoActivity.f(BookInfoActivity.this);
                } else {
                    BookInfoActivity.this.e(2);
                }
            }
        };
        aI2.b(this.mBookId);
    }

    private void k() {
        if (this.k != null) {
            MyApplication.getInstance().setBookInfo(this.k);
        }
    }

    @Subscribe
    public void onBookAdded(BookAddedEvent c2) {
        if (c2.getBookId().equals(this.mBookId) && !this.i) {
            this.m.sendEmptyMessage(0);
        }
    }

    @Subscribe
    public void onBookRemoved(BookRemovedEvent h2) {
        if (h2.getBookId().equals(this.mBookId) && this.i) {
            this.i = false;
            this.g();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.book_detail_info_add: {
                this.h();
                return;
            }
            case R.id.book_detail_info_search: {
                BookReadRecord bookReadRecord = BookReadRecord.get(this.mBookId);
                if (bookReadRecord == null) {
                    this.a(true);
                    new BookSourceManager(this).a(this.k);
                } else {
                    new BookSourceManager(this).a(bookReadRecord);
                }
                return;
            }
            case R.id.author_and_type: {
                this.startActivity(AuthorBooksActivity.a(this, this.k.getAuthor()));
                return;
            }
            case R.id.load_error_hint:
        }
        this.j();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_info);
        final ActionBarClickListener ay2 = new ActionBarClickListener() {

            @Override
            public void onTextClick() {
                BookInfoActivity.a(BookInfoActivity.this);
            }

            @Override
            public void onIconClick() {
            }
        };
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_two_text_view, (ViewGroup) getWindow().getDecorView(), false);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.book_info_title);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.ab_custom_right_text);
        TextView textView2 = (TextView) view.findViewById(R.id.ab_custom_right_text_2);
        textView.setText(R.string.book_info_download);
        textView2.setText(R.string.share);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ay2.onTextClick();
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ay2.onIconClick();
            }
        });
        this.getActionBar().setCustomView(view);
        this.b = this.findViewById(R.id.content);
        this.c = this.findViewById(R.id.pb_loading);
        this.e = this.findViewById(R.id.load_error_hint_btn);
        this.g = this.findViewById(R.id.book_detail_info_search);
        this.f = this.findViewById(R.id.book_detail_info_add);
        this.g.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.f();
        this.mBookId = this.getIntent().getStringExtra("book_id");
        this.i = BookReadRecord.getOnShelf(this.mBookId) != null;
        BusProvider.getInstance().register(this);
        this.j();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onDownloadStatus(DownloadStatusEvent d2) {
        if (this.mBookId.equals(d2.getBookId())) {
            this.a(d2.getStatus());
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.k();
        this.a(false);
        this.a(CommonUtil.getDownloadStatus(this.mBookId));
    }
}
