package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookHelp;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import cn.sharesdk.framework.PlatformActionListener;

public class BookHelpActivity extends AbsPostActivity {

    private View f;
    private z g;
    private ad i;
    private TextView j;
    private View k;
    private Account l;
    private BookHelp m;
    private List h = new ArrayList();
    private boolean n = false;
    private av o = new ab(this);

    static BookHelp a(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.m;
    }

    static BookHelp a(BookHelpActivity BookHelpActivity1, BookHelp BookHelp2) {
        BookHelpActivity1.m = BookHelp2;
        return BookHelp2;
    }

    static void b(BookHelpActivity BookHelpActivity1) {
        if (BookHelpActivity1.m != null) {
            ad ad2;
            String[] String_1darray3;

            BookHelpActivity1.f.setVisibility(0);
            BookHelpActivity1.i = new ad(BookHelpActivity1, (byte) 0);
            ad2 = BookHelpActivity1.i;
            String_1darray3 = new String[1];
            String_1darray3[0] = BookHelpActivity1.m.get_id();
            ad2.b(String_1darray3);
        }
    }

    static void b(BookHelpActivity BookHelpActivity1, BookHelp BookHelp2) {
        Author Author3 = BookHelp2.getAuthor();
        SmartImageView SmartImageView4 = (SmartImageView) BookHelpActivity1.c.findViewById(2131492899);
        ImageView ImageView5;

        if (am.m((Context) BookHelpActivity1))
            SmartImageView4.setImageResource(2130837614);
        else
            SmartImageView4.setImageUrl(Author3.getScaleAvatar());
        ((TextView) BookHelpActivity1.c.findViewById(2131492928)).setText((CharSequence) Author3.getNickname());
        ((TextView) BookHelpActivity1.c.findViewById(2131493631)).setText((CharSequence) new StringBuilder("lv.").append(Author3.getLv()).toString());
        ((TextView) BookHelpActivity1.c.findViewById(2131492935)).setText((CharSequence) t.e(BookHelp2.getCreated()));
        ((TextView) BookHelpActivity1.c.findViewById(2131492936)).setText((CharSequence) BookHelp2.getTitle());
        ((LinkifyTextView) BookHelpActivity1.c.findViewById(2131492905)).setLinkifyText(BookHelp2.getContent(), Author3.isOfficial());
        BookHelpActivity1.j.setText((CharSequence) new StringBuilder("\u5171").append(BookHelp2.getCommentCount()).append("\u6761\u8BC4\u8BBA").toString());
        ImageView5 = (ImageView) BookHelpActivity1.c.findViewById(2131493629);
        if (BookHelpActivity1.n) {
            String String7 = Author3.getGender();

            if ("male".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(2);
            } else if ("female".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(3);
            } else {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(4);
            }
        } else {
            String String6 = Author3.getType();

            if ("official".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(0);
                com.clilystudio.netbook.hpay100.a.a.s((Context) BookHelpActivity1, BookHelp2.get_id());
            } else if ("doyen".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(1);
            } else
                ImageView5.setVisibility(8);
        }
        ((PostAgreeView) BookHelpActivity1.c.findViewById(2131493840)).setPostId(BookHelpActivity1.a);
        BookHelpActivity1.c.a();
        BookHelpActivity1.c.b();
    }

    static z c(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.g;
    }

    static av d(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.o;
    }

    static View e(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.f;
    }

    static List f(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.h;
    }

    static void g(BookHelpActivity BookHelpActivity1) {
        TextView TextView2;

        BookHelpActivity1.f.setVisibility(0);
        BookHelpActivity1.f.findViewById(2131493085).setVisibility(8);
        TextView2 = (TextView) BookHelpActivity1.f.findViewById(2131493798);
        TextView2.setText((CharSequence) "\u70B9\u51FB\u52A0\u8F7D\u8BC4\u8BBA");
        BookHelpActivity1.f.setOnClickListener((View$OnClickListener) new aa(BookHelpActivity1, TextView2));
    }

    static ad h(BookHelpActivity BookHelpActivity1) {
        return BookHelpActivity1.i;
    }

    public final void a(String String1) {
        new N((Activity) this).b(m.get_id(), String1);
    }

    protected final void b() {
        ae ae1;
        String[] String_1darray2;

        i();
        ae1 = new ae(this, (byte) 0);
        String_1darray2 = new String[1];
        String_1darray2[0] = a;
        ae1.b(String_1darray2);
    }

    public final void e(int int1) {
        int int2 = 1;

        if (m != null) {
            if (int1 == int2) {
                a(null);
                return;
            } else if (int1 == 0) {
                Account Account3 = am.e();

                if (Account3 == null) {
                    com.clilystudio.netbook.util.e.a((Activity) this, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C");
                    startActivity(AuthLoginActivity.a((Context) this));
                    int2 = 0;
                } else
                    l = Account3;
                if (int2 != 0) {
                    new N((Activity) this).a(l.getToken(), m.get_id());
                    return;
                }
            }
        }
    }

    public final void f() {
        super.f();
        k.setVisibility(0);
    }

    public final void f(int int1) {
        if (m == null)
            com.clilystudio.netbook.util.e.a((Activity) this, "\u64CD\u4F5C\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
        else
            T.a((Context) this, m.getTitle(), new StringBuilder("\u300C").append(m.getTitle()).append("\u300D   \u6211\u5728\u8FD9\u53D1\u73B0\u4E86\u597D\u591A\u597D\u770B\u7684\u5C0F\u8BF4\uFF0C\u4F60\u4E5F\u6765\u627E\u627E\u770B\u5427").toString(), m.getShareLink(), null, int1, (PlatformActionListener) new ac(this));
    }

    public final void h() {
        super.h();
        k.setVisibility(8);
    }

    public final void i() {
        super.i();
        k.setVisibility(8);
    }

    protected final void o() {
        List List1 = h;
        PostComment PostComment2 = null;
        User User3;
        Author Author4;
        Object Object5;

        if (List1 != null) {
            int int7 = h.size();

            PostComment2 = null;
            if (int7 > 0)
                PostComment2 = (PostComment) h.get(0);
        }
        User3 = am.e().getUser();
        Author4 = new Author();
        Author4.setAvatar(User3.getAvatar());
        Author4.setNickname(User3.getNickname());
        Author4.setLv(User3.getLv());
        Object5 = new PostComment();
        ((PostComment) Object5).setAuthor(Author4);
        ((PostComment) Object5).setContent(l());
        ((PostComment) Object5).setCreated(new Date());
        if (e != null) {
            PostComment$PostCommentReply PostCommentReply6 = new PostComment$PostCommentReply();

            PostCommentReply6.setFloor(e.getFloor());
            PostCommentReply6.setAuthor(e.getAuthor());
            ((PostComment) Object5).setReplyTo(PostCommentReply6);
        }
        if (PostComment2 != null)
            ((PostComment) Object5).setFloor(1 + PostComment2.getFloor());
        else
            ((PostComment) Object5).setFloor(1);
        h.add(0, Object5);
        g.a((Collection) h);
        if (com.clilystudio.netbook.hpay100.a.a.g())
            b.smoothScrollToPositionFromTop(2, 60);
        else
            b.setSelection(2);
    }

    public void onCreate(Bundle Bundle1) {
        Object Object2;

        super.onCreate(Bundle1);
        a(2130903350);
        b("\u4E66\u8352\u4E92\u52A9\u533A\u8BE6\u60C5");
        a = getIntent().getStringExtra("extraBookHelpId");
        b = (ScrollLoadListView) findViewById(2131493135);
        k = findViewById(2131493838);
        a(true);
        c = new PostHeader((Context) this);
        b.addHeaderView((View) c, null, false);
        Object2 = (HotCommentView) LayoutInflater.from((Context) this).inflate(2130903235, (ViewGroup) b, false);
        j = (TextView) ((HotCommentView) Object2).findViewById(2131493519);
        b.addHeaderView((View) Object2, null, false);
        ((HotCommentView) Object2).a(a);
        f = LayoutInflater.from((Context) this).inflate(2130903325, null);
        b.addFooterView(f);
        f.setVisibility(8);
        g = new z(getLayoutInflater());
        b.setAdapter((ListAdapter) g);
        j();
        b();
        n = com.clilystudio.netbook.hpay100.a.a.r((Context) this, "community_user_gender_icon_toggle");
    }
}
