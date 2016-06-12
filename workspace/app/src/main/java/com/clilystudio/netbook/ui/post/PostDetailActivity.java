package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.Post;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.Vote;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
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

public class PostDetailActivity extends AbsPostActivity {

    private z f;
    private cv h;
    private TextView n;
    private View o;
    private View p;
    private Account q;
    private Post r;
    private String s;
    private int u;
    private List g = new ArrayList();
    private View[] i = new View[7];
    private ImageView[] j = new ImageView[7];
    private ProgressBar[] k = new ProgressBar[7];
    private TextView[] l = new TextView[7];
    private TextView[] m = new TextView[7];
    private boolean t = false;
    private boolean v = false;
    private av w = new cr(this);
    private View$OnClickListener x = new cs(this);

    static int a(PostDetailActivity PostDetailActivity1, int int2) {
        PostDetailActivity1.u = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3) {
    }

    static Post a(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.r;
    }

    static Post a(PostDetailActivity PostDetailActivity1, Post Post2) {
        PostDetailActivity1.r = Post2;
        return Post2;
    }

    static void a(PostDetailActivity PostDetailActivity1, int int2, boolean boolean3) {
        PostDetailActivity1.a(int2, false);
    }

    static void a(PostDetailActivity PostDetailActivity1, Vote[] Vote_1darray2) {
        if (Vote_1darray2 != null && Vote_1darray2.length != 0) {
            int[] int_1darray3 = {2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946};
            View[] View_1darray4 = new View[7];
            ImageView[] ImageView_1darray5 = new ImageView[7];
            TextView[] TextView_1darray6 = new TextView[7];
            int int7;
            Account Account8;
            int int9;
            List List10;
            int int11;
            boolean boolean12;

            for (int7 = 0; int7 < 7; ++int7) {
                View_1darray4[int7] = PostDetailActivity1.c.findViewById(int_1darray3[int7]);
                PostDetailActivity1.i[int7] = View_1darray4[int7].findViewById(2131493732);
                PostDetailActivity1.k[int7] = (ProgressBar) View_1darray4[int7].findViewById(2131493734);
                PostDetailActivity1.l[int7] = (TextView) View_1darray4[int7].findViewById(2131493733);
                PostDetailActivity1.m[int7] = (TextView) View_1darray4[int7].findViewById(2131493735);
                ImageView_1darray5[int7] = (ImageView) View_1darray4[int7].findViewById(2131493728);
                PostDetailActivity1.j[int7] = (ImageView) View_1darray4[int7].findViewById(2131493730);
                PostDetailActivity1.j[int7].setTag(Integer.valueOf(int7));
                PostDetailActivity1.j[int7].setOnClickListener(PostDetailActivity1.x);
                TextView_1darray6[int7] = (TextView) View_1darray4[int7].findViewById(2131493729);
            }
            Account8 = am.e();
            if (Account8 != null) {
                List10 = VoteRecord.getVoteRecords(Account8.getUser().getId(), PostDetailActivity1.r.get_id());
                if (List10 != null && !List10.isEmpty())
                    int9 = 1;
                else
                    int9 = 0;
            } else {
                int9 = 0;
                List10 = null;
            }
            int11 = Vote_1darray2.length;
            if (int11 > 0)
                boolean12 = true;
            else
                boolean12 = false;
            PostDetailActivity1.t = boolean12;
            PostDetailActivity1.c.a(int11);
            switch (int11) {
                case 2:
                    int int18;

                    for (int18 = 0; int18 < int11; ++int18)
                        TextView_1darray6[int18].setText((CharSequence) Vote_1darray2[int18].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    break;
                case 3:
                    int int17;

                    for (int17 = 0; int17 < int11; ++int17)
                        TextView_1darray6[int17].setText((CharSequence) Vote_1darray2[int17].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    ImageView_1darray5[2].setImageResource(2130838050);
                    break;
                case 4:
                    int int16;

                    for (int16 = 0; int16 < int11; ++int16)
                        TextView_1darray6[int16].setText((CharSequence) Vote_1darray2[int16].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    ImageView_1darray5[2].setImageResource(2130838050);
                    ImageView_1darray5[3].setImageResource(2130838051);
                    break;
                case 5:
                    int int15;

                    for (int15 = 0; int15 < int11; ++int15)
                        TextView_1darray6[int15].setText((CharSequence) Vote_1darray2[int15].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    ImageView_1darray5[2].setImageResource(2130838050);
                    ImageView_1darray5[3].setImageResource(2130838051);
                    ImageView_1darray5[4].setImageResource(2130838052);
                    break;
                case 6:
                    int int14;

                    for (int14 = 0; int14 < int11; ++int14)
                        TextView_1darray6[int14].setText((CharSequence) Vote_1darray2[int14].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    ImageView_1darray5[2].setImageResource(2130838050);
                    ImageView_1darray5[3].setImageResource(2130838051);
                    ImageView_1darray5[4].setImageResource(2130838052);
                    ImageView_1darray5[5].setImageResource(2130838053);
                    break;
                case 7:
                    int int13;

                    for (int13 = 0; int13 < int11; ++int13)
                        TextView_1darray6[int13].setText((CharSequence) Vote_1darray2[int13].getContent());
                    ImageView_1darray5[1].setImageResource(2130838049);
                    ImageView_1darray5[2].setImageResource(2130838050);
                    ImageView_1darray5[3].setImageResource(2130838051);
                    ImageView_1darray5[4].setImageResource(2130838052);
                    ImageView_1darray5[5].setImageResource(2130838053);
                    ImageView_1darray5[6].setImageResource(2130838054);
                    break;
                default:
                    break;
            }
            if (int9 != 0) {
                PostDetailActivity1.a(((VoteRecord) List10.get(0)).vote_item_index, true);
                return;
            }
        }
    }

    static void b(PostDetailActivity PostDetailActivity1) {
        if (PostDetailActivity1.r != null) {
            cv cv2;
            String[] String_1darray3;

            PostDetailActivity1.p.setVisibility(0);
            PostDetailActivity1.h = new cv(PostDetailActivity1, (byte) 0);
            cv2 = PostDetailActivity1.h;
            String_1darray3 = new String[1];
            String_1darray3[0] = PostDetailActivity1.r.get_id();
            cv2.b(String_1darray3);
        }
    }

    static void b(PostDetailActivity PostDetailActivity1, Post Post2) {
        Author Author3 = Post2.getAuthor();
        SmartImageView SmartImageView4 = (SmartImageView) PostDetailActivity1.c.findViewById(2131492899);
        TextView TextView5;
        ImageView ImageView6;

        if (am.m((Context) PostDetailActivity1))
            SmartImageView4.setImageResource(2130837614);
        else
            SmartImageView4.setImageUrl(Author3.getScaleAvatar());
        SmartImageView4.setOnClickListener((View$OnClickListener) new ct(PostDetailActivity1, Author3));
        ((TextView) PostDetailActivity1.c.findViewById(2131492928)).setText((CharSequence) Author3.getNickname());
        ((TextView) PostDetailActivity1.c.findViewById(2131493631)).setText((CharSequence) new StringBuilder("lv.").append(Author3.getLv()).toString());
        ((TextView) PostDetailActivity1.c.findViewById(2131492935)).setText((CharSequence) com.clilystudio.netbook.util.t.e(Post2.getCreated()));
        TextView5 = (TextView) PostDetailActivity1.c.findViewById(2131492936);
        if ("game".equals(PostDetailActivity1.s))
            TextView5.setVisibility(8);
        else
            TextView5.setText((CharSequence) Post2.getTitle());
        ((LinkifyTextView) PostDetailActivity1.c.findViewById(2131492905)).setLinkifyText(Post2.getContent(), Author3.isOfficial());
        PostDetailActivity1.n = (TextView) PostDetailActivity1.c.findViewById(2131492947);
        PostDetailActivity1.n.setText((CharSequence) new StringBuilder("\u5171").append(Post2.getVoteCount()).append("\u4EBA\u6295\u7968").toString());
        ((TextView) PostDetailActivity1.findViewById(2131493519)).setText((CharSequence) new StringBuilder("\u5171").append(Post2.getCommentCount()).append("\u6761\u8BC4\u8BBA").toString());
        ImageView6 = (ImageView) PostDetailActivity1.c.findViewById(2131493629);
        if (PostDetailActivity1.v) {
            String String8 = Author3.getGender();

            if ("male".equals(String8)) {
                ImageView6.setVisibility(0);
                ImageView6.setImageLevel(2);
            } else if ("female".equals(String8)) {
                ImageView6.setVisibility(0);
                ImageView6.setImageLevel(3);
            } else {
                ImageView6.setVisibility(0);
                ImageView6.setImageLevel(4);
            }
        } else {
            String String7 = Author3.getType();

            if ("official".equals(String7)) {
                ImageView6.setVisibility(0);
                ImageView6.setImageLevel(0);
                com.clilystudio.netbook.hpay100.a.a.s((Context) PostDetailActivity1, Post2.get_id());
            } else if ("doyen".equals(String7)) {
                ImageView6.setVisibility(0);
                ImageView6.setImageLevel(1);
            } else
                ImageView6.setVisibility(8);
        }
        ((PostAgreeView) PostDetailActivity1.c.findViewById(2131493840)).setPostId(PostDetailActivity1.a);
        PostDetailActivity1.c.a();
        PostDetailActivity1.c.b();
    }

    static z c(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.f;
    }

    static av d(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.w;
    }

    static View e(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.p;
    }

    static List f(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.g;
    }

    static void g(PostDetailActivity PostDetailActivity1) {
        TextView TextView2;

        PostDetailActivity1.p.setVisibility(0);
        PostDetailActivity1.p.findViewById(2131493085).setVisibility(8);
        TextView2 = (TextView) PostDetailActivity1.p.findViewById(2131493798);
        TextView2.setText((CharSequence) "\u70B9\u51FB\u91CD\u8BD5");
        PostDetailActivity1.p.setOnClickListener((View$OnClickListener) new cq(PostDetailActivity1, TextView2));
    }

    static int h(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.u;
    }

    static Account i(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.q;
    }

    static cv j(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.h;
    }

    static boolean k(PostDetailActivity PostDetailActivity1) {
        return PostDetailActivity1.p();
    }

    private void a(int int1, boolean boolean2) {
        int int3 = r.getVoteCount();
        Vote[] Vote_1darray4;
        int int5;
        int[] int_1darray6;
        float[] float_1darray7;
        int int8;
        int int9;

        if (!boolean2)
            ++int3;
        n.setText((CharSequence) new StringBuilder("\u5171").append(int3).append("\u4EBA\u6295\u7968").toString());
        Vote_1darray4 = r.getVotes();
        int5 = Vote_1darray4.length;
        int_1darray6 = new int[7];
        float_1darray7 = new float[7];
        for (int8 = 0; int8 < 7; ++int8) {
            if (int8 < int5)
                int_1darray6[int8] = Vote_1darray4[int8].getCount();
            else
                int_1darray6[int8] = 0;
        }
        if (!boolean2)
            int_1darray6[int1] = 1 + int_1darray6[int1];
        for (int9 = 0; int9 < 7; ++int9) {
            String String10;

            j[int9].setEnabled(false);
            i[int9].setVisibility(0);
            if (int9 == int1)
                j[int9].setImageResource(2130838056);
            else
                j[int9].setImageResource(2130838055);
            if (int3 != 0 && int9 < int5)
                float_1darray7[int9] = (float) int_1darray6[int9] / (float) int3;
            else
                float_1darray7[int9] = 0.0F;
            String10 = String.valueOf((int) (0.5F + 100.0F * float_1darray7[int9]));
            l[int9].setText((CharSequence) new StringBuilder().append(int_1darray6[int9]).append(" \u7968").toString());
            m[int9].setText((CharSequence) new StringBuilder().append(String10).append("%").toString());
            k[int9].setProgress((int) (100.0F * float_1darray7[int9]));
        }
    }

    private boolean p() {
        if (q != null && q.getToken() != null)
            return true;
        else {
            Account Account1 = am.e();

            if (Account1 == null) {
                com.clilystudio.netbook.util.e.a((Activity) this, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C");
                startActivity(AuthLoginActivity.a((Context) this));
                return false;
            } else {
                q = Account1;
                return true;
            }
        }
    }

    public final void a(String String1) {
        new N((Activity) this).b(r.get_id(), String1);
    }

    protected final void b() {
        cw cw1;
        String[] String_1darray2;

        i();
        cw1 = new cw(this, (byte) 0);
        String_1darray2 = new String[1];
        String_1darray2[0] = a;
        cw1.b(String_1darray2);
    }

    public final void e(int int1) {
        if (r != null) {
            if (int1 == 0) {
                if (p()) {
                    new N((Activity) this).a(q.getToken(), r.get_id());
                    return;
                }
            } else if (int1 == 1) {
                a(null);
                return;
            }
        }
    }

    public final void f() {
        super.f();
        o.setVisibility(0);
    }

    public final void f(int int1) {
        if (r == null)
            com.clilystudio.netbook.util.e.a((Activity) this, "\u64CD\u4F5C\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
        else {
            String String2 = r.getBook().getTitle();
            String String3 = r.getBook().getFullCover();
            String String4 = r.getShareLink();
            String String5;

            if ("ramble".equals(s)) {
                String2 = r.getTitle();
                String3 = null;
                if (t)
                    String5 = new StringBuilder("\u6295\u7968\uFF1A\u300C").append(r.getTitle()).append("\u300D\uFF0C\u6211\u6295\u4E86\uFF0C\u86EE\u6709\u610F\u601D\u7684\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F").toString();
                else {
                    String5 = new StringBuilder("\u8BDD\u9898\uFF1A\u300C").append(r.getTitle()).append("\u300D\uFF0C\u86EE\u6709\u610F\u601D\u7684\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F").toString();
                    String3 = null;
                }
            } else if (t)
                String5 = new StringBuilder().append(String2).append("\u7684\u6295\u7968\uFF1A\u300C").append(r.getTitle()).append("\u300D\uFF0C\u6211\u6295\u4E86\uFF0C\u86EE\u6709\u610F\u601D\u7684\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F").toString();
            else
                String5 = new StringBuilder().append(String2).append("\u7684\u8BDD\u9898\uFF1A\u300C").append(r.getTitle()).append("\u300D\uFF0C\u86EE\u6709\u610F\u601D\u7684\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F").toString();
            T.a((Context) this, String2, String5, String4, String3, int1, (PlatformActionListener) new cu(this));
        }
    }

    public final String n() {
        return a;
    }

    protected final void o() {
        List List1 = g;
        PostComment PostComment2 = null;
        User User3;
        Author Author4;
        Object Object5;

        if (List1 != null) {
            int int7 = g.size();

            PostComment2 = null;
            if (int7 > 0)
                PostComment2 = (PostComment) g.get(0);
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
        g.add(0, Object5);
        f.a((Collection) g);
        if (com.clilystudio.netbook.hpay100.a.a.g())
            b.smoothScrollToPositionFromTop(2, 60);
        else
            b.setSelection(2);
    }

    public void onCreate(Bundle Bundle1) {
        Object Object2;

        super.onCreate(Bundle1);
        a(2130903350);
        b("\u8BE6\u60C5");
        if (com.clilystudio.netbook.hpay100.a.a.a(getIntent())) {
            String[] String_1darray3 = getIntent().getDataString().split("/");

            a = String_1darray3[-1 + String_1darray3.length];
            s = "ramble";
        } else {
            a = getIntent().getStringExtra("PostBookId");
            s = getIntent().getStringExtra("post_type_key");
        }
        o = findViewById(2131493838);
        a(true);
        b = (ScrollLoadListView) findViewById(2131493135);
        c = new PostHeader((Context) this);
        b.addHeaderView((View) c, null, false);
        Object2 = (HotCommentView) LayoutInflater.from((Context) this).inflate(2130903235, (ViewGroup) b, false);
        b.addHeaderView((View) Object2, null, false);
        ((HotCommentView) Object2).a(a);
        p = LayoutInflater.from((Context) this).inflate(2130903325, null);
        b.addFooterView(p);
        p.setVisibility(8);
        f = new z(getLayoutInflater());
        b.setAdapter((ListAdapter) f);
        j();
        b();
        v = com.clilystudio.netbook.hpay100.a.a.r((Context) this, "community_user_gender_icon_toggle");
    }
}
