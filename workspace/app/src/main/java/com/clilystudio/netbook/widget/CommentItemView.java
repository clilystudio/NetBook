package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.t;

import java.util.Date;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class CommentItemView extends HorizontalScrollView implements View.OnClickListener {
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
    static /* synthetic */ void a(final CommentItemView commentItemView, final PostComment postComment) {
        AlertDialog alertDialog;
        View view = LayoutInflater.from(commentItemView.d).inflate(R.layout.previous_comment_detail_dialog, null);
        String string = postComment.getAuthor().getNickname();
        ((TextView) view.findViewById(R.id.previous_comment_detail_title)).setText(string);
        String string2 = postComment.getContent();
        ((TextView) view.findViewById(R.id.previous_comment_detail_content)).setText(string2);
        if (postComment.get_id() != null) {
            BaseDialog.Builder h2 = new BaseDialog.Builder(commentItemView.d);
            h2.setTitle(string);
            h2.setMessage(string2);
            alertDialog = h2.setPositiveButton("回复TA", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    CommentItemView.a(commentItemView).a(postComment.toRepliedInfo(), CommentItemView.d(commentItemView));
                }
            }).setNegativeButton("关闭", null).create();
        } else {
            alertDialog = new BaseDialog.Builder(commentItemView.d).setView(view).setNegativeButton("关闭", null).create();
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
        this.f.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.like_selected, 0, 0);
        int n = 1 + this.d().getLikeCount();
        this.f.setTextColor(-2741204);
        this.a(this.f, n);
    }

    private PostComment d() {
        return (PostComment) this.findViewById(R.id.post_comment_item_avatar).getTag();
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
        SmartImageView smartImageView = (SmartImageView) this.findViewById(R.id.post_comment_item_avatar);
        TextView textView = (TextView) this.findViewById(R.id.post_comment_item_name);
        TextView textView2 = (TextView) this.findViewById(R.id.post_comment_item_lv);
        TextView textView3 = (TextView) this.findViewById(R.id.post_comment_item_time);
        LinkifyTextView linkifyTextView = (LinkifyTextView) this.findViewById(R.id.post_comment_item_content);
        TextView textView4 = (TextView) this.findViewById(R.id.post_comment_item_floor);
        TextView textView5 = (TextView) this.findViewById(R.id.post_comment_item_reply);
        View view = this.findViewById(R.id.visible_item);
        TextView textView6 = (TextView) this.findViewById(R.id.like);
        ImageView imageView = (ImageView) this.findViewById(R.id.post_comment_item_avatar_verify);
        TextView textView7 = (TextView) this.findViewById(R.id.more);
        View view2 = this.findViewById(R.id.more_divider);
        if (!am.m((Context) this.getContext())) {
            smartImageView.setImageUrl(postComment.getAuthor().getScaleAvatar(), R.drawable.avatar_default);
        } else {
            smartImageView.setImageResource(R.drawable.avatar_default);
        }
        smartImageView.setTag(postComment);
        textView.setText(postComment.getAuthor().getNickname());
        textView2.setText("lv." + postComment.getAuthor().getLv());
        textView3.setText(t.e((Date) postComment.getCreated()));
        linkifyTextView.setLinkifyText(postComment.getContent(), postComment.getAuthor().isOfficial());
        textView4.setText("" + postComment.getFloor() + "\u697c");
        PostComment.PostCommentReply replyTo = postComment.getReplyTo();
        if (replyTo != null && replyTo.getAuthor() != null) {
            Author author = replyTo.getAuthor();
            CommentItemView.a(textView5, false);
            textView5.setText("\u56de\u590d " + author.getNickname() + " (" + replyTo.getFloor() + "\u697c)");
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
        TextView textView = (TextView) this.findViewById(R.id.post_comment_like_count);
        textView.setVisibility(View.VISIBLE);
        textView.setText("" + postComment.getLikeCount() + "\u6b21\u540c\u611f");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.user_icon: {
                this.d.startActivity(e.a((Context) view.getContext(), (Author) this.d().getAuthor()));
                return;
            }
            case R.id.visible_item:
            case R.id.post_comment_item_content: {
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
            case R.id.reply: {
                PostComment postComment = this.d();
                this.d.a(postComment.toRepliedInfo(), this.d.m().getHeaderViewsCount() + this.i);
                return;
            }
            case R.id.like: {
                Account account = am.e();
                if (account == null) {
                    e.a((Activity) this.d, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
                    this.d.startActivity(AuthLoginActivity.a(this.d));
                    return;
                }
                if (account != null) {
                    com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> n3 = new com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus>() {

                        @Override
                        protected ResultStatus doInBackground(String... params) {
                            return com.clilystudio.netbook.api.b.b().o(CommentItemView.a(CommentItemView.this).n(), params[0], params[1]);
                        }

                        @Override
                        protected void onPreExecute() {
                            super.onPreExecute();
                            if (CommentItemView.b(CommentItemView.this) != null) {
                                CommentItemView.b(CommentItemView.this).setLikedInView(true);
                            }
                            CommentItemView.c(CommentItemView.this);
                        }

                        @Override
                        protected void onPostExecute(ResultStatus resultStatus) {
                             super.onPostExecute(resultStatus);
                            if (resultStatus != null && !resultStatus.isOk()) {
                                com.clilystudio.netbook.util.e.a((Activity) CommentItemView.a(CommentItemView.this), "已同感");
                            }
                        }
                    };
                    n3.b(new String[]{this.d().get_id(), account.getToken()});
                    return;
                }
            }
            default: {
                return;
            }
            case R.id.more:
        }
        final PostComment postComment = this.d();
        final CharSequence[] arrcharSequence = postComment.getReplyTo() == null ? new String[]{"举报"} : new String[]{"查看回复的楼层", "举报"};
        BaseDialog.Builder h2 = new BaseDialog.Builder(this.d);
        h2.setTitle("更多");
        h2.setSingleChoiceItems(arrcharSequence, 0, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (arrcharSequence.length == 2 && which == 0) {
                    String string = CommentItemView.a(CommentItemView.this).n();
                    String string2 = postComment.getReplyTo().get_id();
                    new c<String, CommentDetail>() {

                        @Override
                        public CommentDetail a(String... var1) {
                            com.clilystudio.netbook.api.b.a();
                            return com.clilystudio.netbook.api.b.b().A(var1[0], var1[1]);
                        }

                        @Override
                        public void a(CommentDetail commentDetail) {
                            if (commentDetail != null && commentDetail.getComment() != null) {
                                CommentItemView.a(CommentItemView.this, commentDetail.getComment());
                                return;
                            }
                            com.clilystudio.netbook.util.e.a((Activity) CommentItemView.this.getContext(), "楼层不存在");
                        }
                    }.b(string, string2);
                } else if (arrcharSequence.length == 1 || which == 1) {
                    CommentItemView.a(CommentItemView.this).a(postComment.get_id());
                }
                CommentItemView.a(CommentItemView.this).k();

            }
        }).create().show();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.findViewById(R.id.user_icon).setOnClickListener(this);
        this.findViewById(R.id.visible_item).setOnClickListener(this);
        this.e = (ViewGroup) this.findViewById(R.id.invisible_item);
        this.findViewById(R.id.post_comment_item_content).setOnClickListener(this);
        this.findViewById(R.id.reply).setOnClickListener(this);
        this.f = (TextView) this.findViewById(R.id.like);
        this.f.setOnClickListener(this);
        this.findViewById(R.id.more).setOnClickListener(this);
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
