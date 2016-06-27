package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookHelp;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BookHelpActivity extends AbsPostActivity {
    private View f;
    private z g;
    private List<PostComment> h = new ArrayList<PostComment>();
    private ad i;
    private TextView j;
    private View k;
    private Account l;
    private BookHelp m;
    private boolean n = false;
    private av o;

    public BookHelpActivity() {
        this.o = new ab(this);
    }

    static /* synthetic */ BookHelp a(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.m;
    }

    static /* synthetic */ BookHelp a(BookHelpActivity bookHelpActivity, BookHelp bookHelp) {
        bookHelpActivity.m = bookHelp;
        return bookHelp;
    }

    static /* synthetic */ void b(BookHelpActivity bookHelpActivity) {
        if (bookHelpActivity.m != null) {
            bookHelpActivity.f.setVisibility(View.VISIBLE);
            ad ad2 = bookHelpActivity.i = new ad(bookHelpActivity, 0);
            Object[] arrobject = new String[]{bookHelpActivity.m.get_id()};
            ad2.b(arrobject);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(BookHelpActivity bookHelpActivity, BookHelp bookHelp) {
        Author author = bookHelp.getAuthor();
        SmartImageView smartImageView = (SmartImageView) bookHelpActivity.c.findViewById(R.id.avatar);
        if (am.m((Context) bookHelpActivity)) {
            smartImageView.setImageResource(R.drawable.avatar_default);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar());
        }
        ((TextView) bookHelpActivity.c.findViewById(R.id.name)).setText(author.getNickname());
        ((TextView) bookHelpActivity.c.findViewById(R.id.lv)).setText("lv." + author.getLv());
        ((TextView) bookHelpActivity.c.findViewById(R.id.time)).setText(t.e((Date) bookHelp.getCreated()));
        ((TextView) bookHelpActivity.c.findViewById(R.id.title)).setText(bookHelp.getTitle());
        ((LinkifyTextView) bookHelpActivity.c.findViewById(R.id.content)).setLinkifyText(bookHelp.getContent(), author.isOfficial());
        bookHelpActivity.j.setText("\u5171" + bookHelp.getCommentCount() + "\u6761\u8bc4\u8bba");
        ImageView imageView = (ImageView) bookHelpActivity.c.findViewById(R.id.avatar_verify);
        if (bookHelpActivity.n) {
            String string = author.getGender();
            if ("male".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(3);
            } else {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(0);
                a.s(bookHelpActivity, bookHelp.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((PostAgreeView) bookHelpActivity.c.findViewById(R.id.post_agree_view)).setPostId(bookHelpActivity.a);
        bookHelpActivity.c.a();
        bookHelpActivity.c.b();
    }

    static /* synthetic */ z c(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.g;
    }

    static /* synthetic */ av d(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.o;
    }

    static /* synthetic */ View e(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.f;
    }

    static /* synthetic */ List f(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.h;
    }

    static /* synthetic */ void g(final BookHelpActivity bookHelpActivity) {
        bookHelpActivity.f.setVisibility(View.VISIBLE);
        bookHelpActivity.f.findViewById(R.id.pb_loading).setVisibility(View.GONE);
        final TextView textView = (TextView) bookHelpActivity.f.findViewById(R.id.tv_loading);
        textView.setText("\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba");
        bookHelpActivity.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookHelpActivity.e(bookHelpActivity).findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
                textView.setText("\u52a0\u8f7d\u4e2d...");
                BookHelpActivity.b(bookHelpActivity);
            }
        });
    }

    static /* synthetic */ ad h(BookHelpActivity bookHelpActivity) {
        return bookHelpActivity.i;
    }

    @Override
    public final void a(String string) {
        new N(this).b(this.m.get_id(), string);
    }

    @Override
    protected final void b() {
        this.i();
        ae ae2 = new ae(this, 0);
        Object[] arrobject = new String[]{this.a};
        ae2.b(arrobject);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void e(int n) {
        int n2 = 1;
        if (this.m == null) {
            return;
        }
        if (n == n2) {
            this.a(null);
            return;
        }
        if (n != 0) return;
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.startActivity(AuthLoginActivity.a(this));
            return;
        }
        this.l = account;
        if (n2 == 0) return;
        new N(this).a(this.l.getToken(), this.m.get_id());
    }

    @Override
    public final void f() {
        super.f();
        this.k.setVisibility(View.VISIBLE);
    }

    @Override
    public final void f(int n) {
        // share book
     }

    @Override
    public final void h() {
        super.h();
        this.k.setVisibility(View.GONE);
    }

    @Override
    public final void i() {
        super.i();
        this.k.setVisibility(View.GONE);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    @Override
    protected final void o() {
        List<PostComment> list = this.h;
        PostComment postComment = null;
        if (list != null) {
            int n = this.h.size();
            postComment = null;
            if (n > 0) {
                postComment = this.h.get(0);
            }
        }
        User user = am.e().getUser();
        Author author = new Author();
        author.setAvatar(user.getAvatar());
        author.setNickname(user.getNickname());
        author.setLv(user.getLv());
        PostComment postComment2 = new PostComment();
        postComment2.setAuthor(author);
        postComment2.setContent(this.l());
        postComment2.setCreated(new Date());
        if (this.e != null) {
            PostComment$PostCommentReply postComment$PostCommentReply = new PostComment$PostCommentReply();
            postComment$PostCommentReply.setFloor(this.e.getFloor());
            postComment$PostCommentReply.setAuthor(this.e.getAuthor());
            postComment2.setReplyTo(postComment$PostCommentReply);
        }
        if (postComment != null) {
            postComment2.setFloor(1 + postComment.getFloor());
        } else {
            postComment2.setFloor(1);
        }
        this.h.add(0, postComment2);
        this.g.a(this.h);
        if (a.g()) {
            this.b.smoothScrollToPositionFromTop(2, 60);
            return;
        }
        this.b.setSelection(2);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.post_detail_list);
        this.b("\u4e66\u8352\u4e92\u52a9\u533a\u8be6\u60c5");
        this.a = this.getIntent().getStringExtra("extraBookHelpId");
        this.b = (ScrollLoadListView) this.findViewById(R.id.content_list);
        this.k = this.findViewById(R.id.topic_detail_bottom_view);
        this.a(true);
        this.c = new PostHeader(this);
        this.b.addHeaderView(this.c, null, false);
        HotCommentView hotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(R.layout.hot_comment_view, (ViewGroup) this.b, false);
        this.j = (TextView) hotCommentView.findViewById(R.id.comment_count);
        this.b.addHeaderView(hotCommentView, null, false);
        hotCommentView.a(this.a);
        this.f = LayoutInflater.from(this).inflate(R.layout.loading_item, null);
        this.b.addFooterView(this.f);
        this.f.setVisibility(View.GONE);
        this.g = new z(this.getLayoutInflater());
        this.b.setAdapter(this.g);
        this.j();
        this.b();
        this.n = a.r(this, "community_user_gender_icon_toggle");
    }
}
