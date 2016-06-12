package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.t;

public class CommentItemView extends HorizontalScrollView implements View$OnClickListener {

    private int a;
    private AbsPostActivity d;
    private ViewGroup e;
    private TextView f;
    private PostComment h;
    private int i;
    private boolean b = true;
    private boolean c = false;
    private com.clilystudio.netbook.api.b g = com.clilystudio.netbook.api.b.a();
    public CommentItemView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        if (!isInEditMode()) {
            if (!(Context1 instanceof AbsPostActivity))
                throw new RuntimeException("Must be used in TopicDetailActivity");
            else {
                d = (AbsPostActivity) Context1;
                setHorizontalScrollBarEnabled(false);
                a = d.getWindowManager().getDefaultDisplay().getWidth();
            }
        }
    }

    static AbsPostActivity a(CommentItemView CommentItemView1) {
        return CommentItemView1.d;
    }

    private static void a(View View1, boolean boolean2) {
        int int3;

        if (boolean2)
            int3 = 8;
        else
            int3 = 0;
        View1.setVisibility(int3);
    }

    static void a(CommentItemView CommentItemView1, PostComment PostComment2) {
        View View3 = LayoutInflater.from((Context) CommentItemView1.d).inflate(2130903353, null);
        Object Object4 = PostComment2.getAuthor().getNickname();
        Object Object5;
        AlertDialog AlertDialog7;

        ((TextView) View3.findViewById(2131493844)).setText((CharSequence) Object4);
        Object5 = PostComment2.getContent();
        ((TextView) View3.findViewById(2131493845)).setText((CharSequence) Object5);
        if (PostComment2.get_id() != null) {
            uk.me.lewisdeane.ldialogs.h h6 = new uk.me.lewisdeane.ldialogs.h((Context) CommentItemView1.d);

            h6.d = (String) Object4;
            h6.e = (String) Object5;
            AlertDialog7 = h6.a("\u56DE\u590DTA", (DialogInterface$OnClickListener) new m(CommentItemView1, PostComment2)).b("\u5173\u95ED", null).a();
        } else
            AlertDialog7 = new uk.me.lewisdeane.ldialogs.h((Context) CommentItemView1.d).a(View3).b("\u5173\u95ED", null).a();
        AlertDialog7.show();
    }

    static PostComment b(CommentItemView CommentItemView1) {
        return CommentItemView1.h;
    }

    static void c(CommentItemView CommentItemView1) {
        CommentItemView1.c();
    }

    static int d(CommentItemView CommentItemView1) {
        return CommentItemView1.i;
    }

    private void a(TextView TextView1, int int2) {
        StringBuilder StringBuilder3 = new StringBuilder();
        Object Object4;

        if (int2 == 0)
            Object4 = "";
        else
            Object4 = Integer.valueOf(int2);
        TextView1.setText((CharSequence) StringBuilder3.append(Object4).append(" \u540C\u611F").toString());
    }

    private void a(boolean boolean1) {
        boolean boolean2 = true;
        int int3 = e.getWidth();
        int int4;
        int int5;

        if (b) {
            int5 = -int3;
            int4 = 0;
        } else {
            int4 = -int3;
            int5 = 0;
        }
        if (boolean1) {
            smoothScrollTo(int4 - int5, 0);
            if (b)
                boolean2 = false;
            b = boolean2;
        } else {
            scrollTo(int4 - int5, 0);
            if (b)
                boolean2 = false;
            b = boolean2;
        }
    }

    private void c() {
        int int1;

        f.setCompoundDrawablesWithIntrinsicBounds(0, 2130837985, 0, 0);
        int1 = 1 + d().getLikeCount();
        f.setTextColor(-2741204);
        a(f, int1);
    }

    private PostComment d() {
        return (PostComment) findViewById(2131493761).getTag();
    }

    public final void a() {
        if (!b)
            a(true);
    }

    public final void a(PostComment PostComment1, int int2) {
        SmartImageView SmartImageView3;
        TextView TextView4;
        TextView TextView5;
        TextView TextView6;
        LinkifyTextView LinkifyTextView7;
        TextView TextView8;
        Object Object9;
        View View10;
        TextView TextView11;
        Object Object12;
        Object Object13;
        View View14;
        PostComment$PostCommentReply PostCommentReply15;
        int int16;

        h = PostComment1;
        i = int2;
        SmartImageView3 = (SmartImageView) findViewById(2131493761);
        TextView4 = (TextView) findViewById(2131493764);
        TextView5 = (TextView) findViewById(2131493765);
        TextView6 = (TextView) findViewById(2131493769);
        LinkifyTextView7 = (LinkifyTextView) findViewById(2131493766);
        TextView8 = (TextView) findViewById(2131493763);
        Object9 = (TextView) findViewById(2131493767);
        View10 = findViewById(2131493759);
        TextView11 = (TextView) findViewById(2131493772);
        Object12 = (ImageView) findViewById(2131493762);
        Object13 = (TextView) findViewById(2131493432);
        View14 = findViewById(2131493773);
        if (!android.support.design.widget.am.m(getContext()))
            SmartImageView3.setImageUrl(PostComment1.getAuthor().getScaleAvatar(), 2130837614);
        else
            SmartImageView3.setImageResource(2130837614);
        SmartImageView3.setTag(PostComment1);
        TextView4.setText((CharSequence) PostComment1.getAuthor().getNickname());
        TextView5.setText((CharSequence) new StringBuilder("lv.").append(PostComment1.getAuthor().getLv()).toString());
        TextView6.setText((CharSequence) t.e(PostComment1.getCreated()));
        LinkifyTextView7.setLinkifyText(PostComment1.getContent(), PostComment1.getAuthor().isOfficial());
        TextView8.setText((CharSequence) new StringBuilder().append(PostComment1.getFloor()).append("\u697C").toString());
        PostCommentReply15 = PostComment1.getReplyTo();
        if (PostCommentReply15 != null && PostCommentReply15.getAuthor() != null) {
            Author Author19 = PostCommentReply15.getAuthor();

            a((View) Object9, false);
            ((TextView) Object9).setText((CharSequence) new StringBuilder("\u56DE\u590D ").append(Author19.getNickname()).append(" (").append(PostCommentReply15.getFloor()).append("\u697C)").toString());
        } else
            a((View) Object9, true);
        View10.getLayoutParams().width = a;
        int16 = PostComment1.getLikeCount();
        if (PostComment1.isLikedInView())
            c();
        else
            a(TextView11, int16);
        if (com.clilystudio.netbook.hpay100.a.a.r(getContext(), "community_user_gender_icon_toggle")) {
            String String18 = PostComment1.getAuthor().getGender();

            a((View) Object12, false);
            if ("male".equals(String18))
                ((ImageView) Object12).setImageLevel(2);
            else if ("female".equals(String18))
                ((ImageView) Object12).setImageLevel(3);
            else
                ((ImageView) Object12).setImageLevel(4);
        } else {
            String String17 = PostComment1.getAuthor().getType();

            if ("official".equals(String17)) {
                a((View) Object12, false);
                ((ImageView) Object12).setImageLevel(0);
            } else if ("doyen".equals(String17)) {
                a((View) Object12, false);
                ((ImageView) Object12).setImageLevel(1);
            } else
                a((View) Object12, true);
        }
        if (PostComment1.get_id() == null) {
            a((View) Object13, true);
            a(View14, true);
        } else {
            a((View) Object13, false);
            a(View14, false);
        }
    }

    public final void b() {
        if (!b)
            a(false);
    }

    public final void b(PostComment PostComment1, int int2) {
        TextView TextView3;

        a(PostComment1, -1);
        TextView3 = (TextView) findViewById(2131493768);
        TextView3.setVisibility(0);
        TextView3.setText((CharSequence) new StringBuilder().append(PostComment1.getLikeCount()).append("\u6B21\u540C\u611F").toString());
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            case 2131493760:
                d.startActivity(com.clilystudio.netbook.util.e.a(View1.getContext(), d().getAuthor()));
                return;
            case 2131493766:
            case 2131493759:
                ListView ListView10 = d.m();
                int int11;

                for (int11 = 0; int11 < ListView10.getChildCount(); ++int11) {
                    View View12 = ListView10.getChildAt(int11);

                    if (View12 instanceof CommentItemView && View12 != this)
                        ((CommentItemView) View12).a();
                }
                a(true);
                return;
            case 2131493771:
                PostComment PostComment9 = d();

                d.a(PostComment9.toRepliedInfo(), d.m().getHeaderViewsCount() + i);
                return;
            case 2131493772:
                Account Account5 = am.e();

                if (Account5 == null) {
                    com.clilystudio.netbook.util.e.a((Activity) d, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C");
                    d.startActivity(AuthLoginActivity.a((Context) d));
                    Account5 = null;
                }
                if (Account5 != null) {
                    n n6 = new n(this, (byte) 0);
                    String[] String_1darray7 = new String[2];

                    String_1darray7[0] = d().get_id();
                    String_1darray7[1] = Account5.getToken();
                    n6.b(String_1darray7);
                    return;
                }
            default:
                return;
            case 2131493432:
                PostComment PostComment2 = d();
                Object[] Object_1darray3;
                uk.me.lewisdeane.ldialogs.h h4;

                if (PostComment2.getReplyTo() == null)
                    Object_1darray3 = new String[]{"\u4E3E\u62A5"};
                else
                    Object_1darray3 = new String[]{"\u67E5\u770B\u56DE\u590D\u7684\u697C\u5C42", "\u4E3E\u62A5"};
                h4 = new uk.me.lewisdeane.ldialogs.h((Context) d);
                h4.d = "\u66F4\u591A";
                h4.a((CharSequence[]) Object_1darray3, (DialogInterface$OnClickListener) new l(this, (String[]) Object_1darray3, PostComment2)).a().show();
                return;
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(2131493760).setOnClickListener(this);
        findViewById(2131493759).setOnClickListener(this);
        e = (ViewGroup) findViewById(2131493770);
        findViewById(2131493766).setOnClickListener(this);
        findViewById(2131493771).setOnClickListener(this);
        f = (TextView) findViewById(2131493772);
        f.setOnClickListener(this);
        findViewById(2131493432).setOnClickListener(this);
    }

    public boolean onInterceptTouchEvent(MotionEvent MotionEvent1) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1) {
        switch (MotionEvent1.getAction()) {
            default:
                return super.onTouchEvent(MotionEvent1);
            case 0:
                return false;
        }
    }
}
