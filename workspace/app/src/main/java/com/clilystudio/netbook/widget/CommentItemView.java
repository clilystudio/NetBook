package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.t;

import java.util.Date;

public class CommentItemView extends HorizontalScrollView
        implements View.OnClickListener {
    private int a;
    private boolean b = true;
    private boolean c = false;
    private AbsPostActivity d;
    private ViewGroup e;
    private TextView f;
    private b g = b.a();
    private PostComment h;
    private int i;

    public CommentItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (!this.isInEditMode()) {
            if (!(context instanceof AbsPostActivity)) {
                throw new RuntimeException("Must be used in TopicDetailActivity");
            }
            this.d = (AbsPostActivity) context;
            this.setHorizontalScrollBarEnabled(false);
            this.a = this.d.getWindowManager().getDefaultDisplay().getWidth();
        }
    }

    static /* synthetic */ AbsPostActivity a(CommentItemView commentItemView) {
        return commentItemView.d;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void a(View view, boolean bl) {
        int n = bl ? 8 : 0;
        view.setVisibility(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(CommentItemView commentItemView, PostComment postComment) {
        AlertDialog alertDialog;
        View view = LayoutInflater.from(commentItemView.d).inflate(2130903353, null);
        String string = postComment.getAuthor().getNickname();
        ((TextView) view.findViewById(2131493844)).setText(string);
        String string2 = postComment.getContent();
        ((TextView) view.findViewById(2131493845)).setText(string2);
        if (postComment.get_id() != null) {
            h h2 = new h(commentItemView.d);
            h2.d = string;
            h2.e = string2;
            alertDialog = h2.a("\u56de\u590dTA", (DialogInterface.OnClickListener) ((Object) new m(commentItemView, postComment))).b("\u5173\u95ed", null).a();
        } else {
            alertDialog = new h(commentItemView.d).a(view).b("\u5173\u95ed", null).a();
        }
        alertDialog.show();
    }

    static /* synthetic */ PostComment b(CommentItemView commentItemView) {
        return commentItemView.h;
    }

    static /* synthetic */ void c(CommentItemView commentItemView) {
        commentItemView.c();
    }

    static /* synthetic */ int d(CommentItemView commentItemView) {
        return commentItemView.i;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(TextView textView, int n) {
        StringBuilder stringBuilder = new StringBuilder();
        String string = n == 0 ? "" : Integer.valueOf(n);
        textView.setText(stringBuilder.append((Object) string).append(" \u540c\u611f").toString());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        int n;
        int n2;
        boolean bl2 = true;
        int n3 = this.e.getWidth();
        if (this.b) {
            n2 = -n3;
            n = 0;
        } else {
            n = -n3;
            n2 = 0;
        }
        if (bl) {
            this.smoothScrollTo(n - n2, 0);
            if (this.b) {
                bl2 = false;
            }
            this.b = bl2;
            return;
        }
        this.scrollTo(n - n2, 0);
        if (this.b) {
            bl2 = false;
        }
        this.b = bl2;
    }

    private void c() {
        this.f.setCompoundDrawablesWithIntrinsicBounds(0, 2130837985, 0, 0);
        int n = 1 + this.d().getLikeCount();
        this.f.setTextColor(-2741204);
        this.a(this.f, n);
    }

    private PostComment d() {
        return (PostComment) this.findViewById(2131493761).getTag();
    }

    public final void a() {
        if (!this.b) {
            this.a(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(PostComment postComment, int n) {
        this.h = postComment;
        this.i = n;
        SmartImageView smartImageView = (SmartImageView) this.findViewById(2131493761);
        TextView textView = (TextView) this.findViewById(2131493764);
        TextView textView2 = (TextView) this.findViewById(2131493765);
        TextView textView3 = (TextView) this.findViewById(2131493769);
        LinkifyTextView linkifyTextView = (LinkifyTextView) this.findViewById(2131493766);
        TextView textView4 = (TextView) this.findViewById(2131493763);
        TextView textView5 = (TextView) this.findViewById(2131493767);
        View view = this.findViewById(2131493759);
        TextView textView6 = (TextView) this.findViewById(2131493772);
        ImageView imageView = (ImageView) this.findViewById(2131493762);
        TextView textView7 = (TextView) this.findViewById(2131493432);
        View view2 = this.findViewById(2131493773);
        if (!am.m((Context) this.getContext())) {
            smartImageView.setImageUrl(postComment.getAuthor().getScaleAvatar(), 2130837614);
        } else {
            smartImageView.setImageResource(2130837614);
        }
        smartImageView.setTag(postComment);
        textView.setText(postComment.getAuthor().getNickname());
        textView2.setText("lv." + postComment.getAuthor().getLv());
        textView3.setText(t.e((Date) postComment.getCreated()));
        linkifyTextView.setLinkifyText(postComment.getContent(), postComment.getAuthor().isOfficial());
        textView4.setText("" + postComment.getFloor() + "\u697c");
        PostComment$PostCommentReply postComment$PostCommentReply = postComment.getReplyTo();
        if (postComment$PostCommentReply != null && postComment$PostCommentReply.getAuthor() != null) {
            Author author = postComment$PostCommentReply.getAuthor();
            CommentItemView.a(textView5, false);
            textView5.setText("\u56de\u590d " + author.getNickname() + " (" + postComment$PostCommentReply.getFloor() + "\u697c)");
        } else {
            CommentItemView.a(textView5, true);
        }
        view.getLayoutParams().width = this.a;
        int n2 = postComment.getLikeCount();
        if (postComment.isLikedInView()) {
            this.c();
        } else {
            this.a(textView6, n2);
        }
        if (a.r(this.getContext(), "community_user_gender_icon_toggle")) {
            String string = postComment.getAuthor().getGender();
            CommentItemView.a(imageView, false);
            if ("male".equals(string)) {
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setImageLevel(3);
            } else {
                imageView.setImageLevel(4);
            }
        } else {
            String string = postComment.getAuthor().getType();
            if ("official".equals(string)) {
                CommentItemView.a(imageView, false);
                imageView.setImageLevel(0);
            } else if ("doyen".equals(string)) {
                CommentItemView.a(imageView, false);
                imageView.setImageLevel(1);
            } else {
                CommentItemView.a(imageView, true);
            }
        }
        if (postComment.get_id() == null) {
            CommentItemView.a(textView7, true);
            CommentItemView.a(view2, true);
            return;
        }
        CommentItemView.a(textView7, false);
        CommentItemView.a(view2, false);
    }

    public final void b() {
        if (!this.b) {
            this.a(false);
        }
    }

    public final void b(PostComment postComment, int n) {
        this.a(postComment, -1);
        TextView textView = (TextView) this.findViewById(2131493768);
        textView.setVisibility(0);
        textView.setText("" + postComment.getLikeCount() + "\u6b21\u540c\u611f");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131493760: {
                this.d.startActivity(e.a((Context) view.getContext(), (Author) this.d().getAuthor()));
                return;
            }
            case 2131493759:
            case 2131493766: {
                ListView listView = this.d.m();
                int n2 = 0;
                do {
                    if (n2 >= listView.getChildCount()) {
                        this.a(true);
                        return;
                    }
                    View view2 = listView.getChildAt(n2);
                    if (view2 instanceof CommentItemView && view2 != this) {
                        ((CommentItemView) view2).a();
                    }
                    ++n2;
                } while (true);
            }
            case 2131493771: {
                PostComment postComment = this.d();
                this.d.a(postComment.toRepliedInfo(), this.d.m().getHeaderViewsCount() + this.i);
                return;
            }
            case 2131493772: {
                Account account = am.e();
                if (account == null) {
                    e.a((Activity) this.d, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
                    this.d.startActivity(AuthLoginActivity.a(this.d));
                    return;
                }
                if (account != null) {
                    n n3 = new n(this, 0);
                    Object[] arrobject = new String[]{this.d().get_id(), account.getToken()};
                    n3.b(arrobject);
                    return;
                }
            }
            default: {
                return;
            }
            case 2131493432:
        }
        PostComment postComment = this.d();
        CharSequence[] arrcharSequence = postComment.getReplyTo() == null ? new String[]{"\u4e3e\u62a5"} : new String[]{"\u67e5\u770b\u56de\u590d\u7684\u697c\u5c42", "\u4e3e\u62a5"};
        h h2 = new h(this.d);
        h2.d = "\u66f4\u591a";
        h2.a(arrcharSequence, (DialogInterface.OnClickListener) ((Object) new l(this, (String[]) arrcharSequence, postComment))).a().show();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.findViewById(2131493760).setOnClickListener(this);
        this.findViewById(2131493759).setOnClickListener(this);
        this.e = (ViewGroup) this.findViewById(2131493770);
        this.findViewById(2131493766).setOnClickListener(this);
        this.findViewById(2131493771).setOnClickListener(this);
        this.f = (TextView) this.findViewById(2131493772);
        this.f.setOnClickListener(this);
        this.findViewById(2131493432).setOnClickListener(this);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                return super.onTouchEvent(motionEvent);
            }
            case 0:
        }
        return false;
    }
}
