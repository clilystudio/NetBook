package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.q;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.OtherUserActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class G extends u {
    static {
        G.class.getSimpleName();
    }

    private Context a;
    private boolean b;
    private boolean c;
    private View d;
    private Tweet e;
    private boolean f = false;

    public G(Activity activity, boolean bl, boolean bl2) {
        this.a = activity;
        this.c = bl;
        this.b = bl2;
//        TypedArray typedArray = this.a.getTheme().obtainStyledAttributes(new int[]{R.attr.tweetOperatorBackground, R.attr.tweetOperatedBackground});
//        typedArray.getResourceId(0, R.drawable.tweet_operator_circle);
//        typedArray.getResourceId(1, R.drawable.tweet_operated_circle);
//        typedArray.recycle();
        this.f = com.clilystudio.netbook.hpay100.a.a.r(this.a, "community_user_gender_icon_toggle");
    }

    static /* synthetic */ Context a(G g2) {
        return g2.a;
    }

    static /* synthetic */ View a(G g2, View view) {
        g2.d = view;
        return view;
    }

    private static void a(final View view, final int n, final int n2, final int n3, final int n4) {
        ((View) view.getParent()).post(new Runnable() {
            @Override
            public void run() {
                Rect rect = new Rect();
                view.setEnabled(true);
                view.getHitRect(rect);
                rect.top -= n;
                rect.bottom += n2;
                rect.left -= n3;
                rect.right += n4;
                TouchDelegate touchDelegate = new TouchDelegate(rect, view);
                if (View.class.isInstance(view.getParent())) {
                    ((View) view.getParent()).setTouchDelegate(touchDelegate);
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final G g2, ViewHolder r, User user) {
        Account account = am.e();
        if (account == null) {
            g2.a.startActivity(AuthLoginActivity.a(g2.a));
            return;
        }
        if (!g2.b || user == null) return;
        {
            if (G.a(account, user)) {
                g2.b(r);
                e<String, Void, ResultStatus> v = new e<String, Void, ResultStatus>() {
                    private String a;

                    @Override
                    protected ResultStatus doInBackground(String... params) {
                        this.a = params[1];
                        return this.c().i(params[0], params[1]);
                    }

                    @Override
                    protected void onPostExecute(ResultStatus resultStatus) {
                        super.onPostExecute(resultStatus);
                        Account account = am.e();
                        if (resultStatus != null && resultStatus.isOk()) {
                            i.a().post(new q());
                            if (account != null) {
                                FollowRecord.cancelFollow(account.getUser().getId(), this.a);
                            }
                        } else if (resultStatus != null && "TOKEN_INVALID".equals(resultStatus.getCode())) {
                            com.clilystudio.netbook.util.e.a((Activity) g2.a, g2.a.getString(R.string.tweet_token_invalid));
                        }
                    }
                };
                String[] arrstring = new String[]{account.getToken(), user.getId()};
                v.execute(arrstring);
                return;
            }
        }
        g2.a(r);
        com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> t = new e<String, Void, ResultStatus>() {
            private String a;

            @Override
            protected ResultStatus doInBackground(String... params) {
                this.a = params[1];
                return this.c().h(params[0], params[1]);
            }

            @Override
            protected void onPostExecute(ResultStatus resultStatus) {
                super.onPostExecute(resultStatus);
                Account account = am.e();
                if (resultStatus != null && resultStatus.isOk()) {
                    com.clilystudio.netbook.event.i.a().register(new q());
                    if (account != null) {
                        FollowRecord.save2DB(account.getUser().getId(), this.a);
                    }
                } else if (resultStatus != null && "TOKEN_INVALID".equals(resultStatus.getCode())) {
                    com.clilystudio.netbook.util.e.a((Activity) g2.a, g2.a.getString(R.string.tweet_token_invalid));
                }
            }
        };
        String[] arrstring = new String[]{account.getToken(), user.getId()};
        t.execute(arrstring);
    }

    static /* synthetic */ void a(G g2, Tweet tweet) {
        if (tweet.getPost() == null) {
            g2.a.startActivity(TweetDetailActivity.a(g2.a, tweet.get_id(), "TWEET"));
            return;
        }
        g2.a.startActivity(PostDetailActivity.a(g2.a, tweet.getPost().getId(), tweet.getPost().getBlock()));
    }

    public static boolean a(Account account, Tweet tweet) {
        if (G.a(tweet, account)) {
            return false;
        }
        if (tweet.isRetween()) {
            tweet = tweet.getRefTweet();
        }
        return !G.a(account, tweet.get_id());
    }

    private static boolean a(Account account, User user) {
        return FollowRecord.isFollowed(account.getUser().getId(), user.getId());
    }

    public static boolean a(Account account, String string) {
        return RetweenRecord.isRetweened(account.getUser().getId(), string);
    }

    public static boolean a(Tweet tweet, Account account) {
        return tweet.getUser().getId().equals(account.getUser().getId());
    }

    static /* synthetic */ void b(G g2, Tweet tweet) {
        if (tweet.getPost() == null) {
            g2.a.startActivity(TweetDetailActivity.a(g2.a, tweet.get_id(), "ARTICLE"));
            return;
        }
        g2.a.startActivity(PostDetailActivity.a(g2.a, tweet.getPost().getId(), tweet.getPost().getBlock()));
    }

    static /* synthetic */ void c(G g2, Tweet tweet) {
        Intent intent;
        if (tweet.getPost() == null) {
            intent = new Intent(g2.a, ReviewActivity.class);
            intent.putExtra("extraReviewId", tweet.get_id());
            intent.putExtra("EXTRA_TYPE_NAME", "BOOK_COMMENT");
        } else if ("review".equals(tweet.getPost().getBlock())) {
            intent = new Intent(g2.a, ReviewActivity.class);
            String string = tweet.getPost().getId();
            String string2 = tweet.getPost().getBlock();
            intent.putExtra("extraReviewId", string);
            intent.putExtra("EXTRA_TYPE_NAME", string2);
        } else {
            boolean bl = "book".equals(tweet.getPost().getBlock());
            intent = null;
            if (bl) {
                String string = tweet.getPost().getId();
                String string3 = tweet.getPost().getBlock();
                intent = PostDetailActivity.a(g2.a, string, string3);
            }
        }
        g2.a.startActivity(intent);
    }

    static /* synthetic */ Tweet d(G g2, Tweet tweet) {
        g2.e = tweet;
        return tweet;
    }

    private int a(Tweet var1_1) {
        String var2_2 = var1_1.getType();
        switch (var2_2) {
            case "TWEET":
                return 0;
            case "RETWEET":
                return 1;
            case "REVIEW":
                return 2;
            case "ARTICLE":
                return 3;
            default:
                return -1;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private View a(View view, int n, ViewGroup viewGroup, int n2) {
        if (view != null) return view;
        switch (n) {
            case 0:
                View view2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet, viewGroup, false);
                view2.setTag(new ViewHolder(view2));
                return view2;
            case 1:
                View view3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet_comment, viewGroup, false);
                view3.findViewById(R.id.review_rating_container).setVisibility(View.VISIBLE);
                view3.setTag(new ViewHolder(view3));
                return view3;
            case 2:
                View view4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet_artics, viewGroup, false);
                view4.setTag(new ViewHolder(view4));
                return view4;
            case 3:
                return this.a(null, this.a(((Tweet) this.getItem(n2)).getRefTweet()), viewGroup, n2);
            default:
                return null;
        }
    }

    private void a(int n, View view, final Tweet tweet) {
        switch (n) {
            default: {
                return;
            }
            case 0: {
                view.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Tweet tweet2 = tweet;
                        if (tweet2.isRetween()) {
                            tweet2 = tweet2.getRefTweet();
                        }
                        G.a(G.this, tweet2);
                    }
                });
                return;
            }
            case 2: {
                view.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Tweet tweet2 = tweet;
                        if (tweet2.isRetween()) {
                            tweet2 = tweet2.getRefTweet();
                        }
                        G.b(G.this, tweet2);
                    }
                });
                return;
            }
            case 1:
        }
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Tweet tweet2 = tweet;
                if (tweet2.isRetween()) {
                    tweet2 = tweet2.getRefTweet();
                }
                G.c(G.this, tweet2);
            }
        });
    }

    private void a(ViewHolder r) {
        r.h.setText("\u5df2\u5173\u6ce8");
        r.h.setTextColor(0xa72600);
        r.h.setTextSize(10.0f);
        Drawable drawable = this.a.getResources().getDrawable(R.drawable.ic_followed);
        if (drawable != null) {
            drawable.setBounds(0, 0, 9 * drawable.getMinimumWidth() / 16, 9 * drawable.getMinimumHeight() / 16);
        }
        r.h.setCompoundDrawables(drawable, null, null, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(final ViewHolder r, final Tweet tweet, final User user, boolean bl) {
        G.a(r.h, 15, 15, 15, 15);
        r.h.setVisibility(View.VISIBLE);
        if (bl) {
            r.h.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    BaseDialog.Builder builder = new BaseDialog.Builder(r.q.getContext());
                    builder.setTitle("确定删除动态？");
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                        }
                    }).setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            com.clilystudio.netbook.a_pack.e<String, Void, PostPublish> s = new com.clilystudio.netbook.a_pack.e<String, Void, PostPublish>() {

                                @Override
                                protected PostPublish doInBackground(String... params) {
                                    com.clilystudio.netbook.api.b.a();
                                    return com.clilystudio.netbook.api.b.b().k(params[0], params[1]);
                                }

                                @Override
                                protected void onPostExecute(PostPublish postPublish) {
                                    if (postPublish != null && postPublish.isOk() && G.this.d != null) {
                                        G.this.f().remove(G.this.e);
                                        G.this.notifyDataSetChanged();
                                        G.this.d = null;
                                        G.this.e = null;
                                    }
                                }
                            };
                            String[] arrstring = new String[]{am.e().getToken(), tweet.get_id()};
                            s.execute(arrstring);
                            G.a(G.this, r.q);
                            G.d(G.this, tweet);
                        }
                    }).show();
                }
            });
            r.h.setText("删除");
            Drawable drawable = r.h.getResources().getDrawable(R.drawable.ic_recycle_bin);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            }
            r.h.setCompoundDrawables(drawable, null, null, null);
            r.h.setTextColor(0xaaaaaa);
            return;
        }
        if (!this.b) {
            r.h.setVisibility(View.INVISIBLE);
            return;
        }
        Account account = am.e();
        if (account != null) {
            if (G.a(account, user)) {
                this.a(r);
            } else {
                this.b(r);
            }
        }
        r.h.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                G.a(G.this, r, user);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Tweet tweet, ViewHolder r) {
        User user = tweet.isRetween() ? tweet.getFrom() : tweet.getUser();
        if (!this.b && (tweet.isHot() || tweet.isRetween() && tweet.getRefTweet().isHot())) {
            r.k.setVisibility(View.VISIBLE);
            r.k.a("hot");
            r.e.setVisibility(View.GONE);
        } else {
            r.k.setVisibility(View.GONE);
            r.e.setVisibility(View.VISIBLE);
        }
        if (tweet.isRetween()) {
            r.l.setVisibility(View.VISIBLE);
            String string = tweet.getUser().getNickname();
            if (tweet.getNames() != null && tweet.names.length > 0) {
                String string2 = "";
                for (int k = 0; k < 3 && k < tweet.getNames().length; ++k) {
                    string2 = string2 + tweet.getNames()[k] + " , ";
                }
                string = string2.substring(0, -2 + string2.length());
                if (tweet.getNames().length > 3) {
                    string = string + " \u7b49" + tweet.getNames().length + "\u4eba";
                }
            }
            String text = " " + string + " 转发了这条动态";
            r.l.setText(text);
            r.e.setText(t.e(tweet.getCreated()));
            tweet.getRefTweet().setUser(tweet.getFrom());
            tweet = tweet.getRefTweet();
        } else {
            r.l.setVisibility(View.GONE);
            r.e.setText(t.e(tweet.getCreated()));
        }
        r.a.setImageUrl(user.getFullAvatar());
        if (this.a(tweet) != 0) {
            r.i.setText(tweet.getTitle());
        }
        r.b.setText(user.getNickname());
        r.c.setText(tweet.getContent());
        String text = "lv." + user.getLv();
        r.d.setText(text);
        String string = "" + tweet.getCommented();
        String string3 = "" + tweet.getRetweeted();
        if (tweet.getVotes() == null || tweet.getVotes().length == 0) {
            if (tweet.getCommented() > 9999) {
                string = com.clilystudio.netbook.hpay100.a.a.i(tweet.getCommented());
            }
            if (tweet.getRetweeted() > 9999) {
                string3 = com.clilystudio.netbook.hpay100.a.a.i(tweet.getRetweeted());
            }
            Drawable drawable = this.a.getResources().getDrawable(R.drawable.ic_message);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            }
            r.f.setCompoundDrawables(drawable, null, null, null);
            TextView textView = r.f;
            if (tweet.getCommented() == 0) {
                string = "\u8bc4\u8bba";
            }
            textView.setText(string);
        } else {
            Drawable drawable = this.a.getResources().getDrawable(R.drawable.ic_vote);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            }
            r.f.setCompoundDrawables(drawable, null, null, null);
            TextView textView = r.f;
            String string4 = tweet.getVoteCount() == 0 ? "\u8bc4\u8bba" : "" + tweet.getVoteCount();
            textView.setText(string4);
        }
        TextView textView = r.g;
        if (tweet.getRetweeted() == 0) {
            string3 = "\u8f6c\u53d1";
        }
        textView.setText(string3);
        final Intent intent = OtherUserActivity.a(this.a);
        intent.putExtra("USER_ID", tweet.getUser().getId());
        intent.putExtra("USER_NAME", tweet.getUser().getNickname());
        r.a.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                G.a(G.this).startActivity(intent);
            }
        });
        if (1 == this.a(tweet)) {
            r.m.setText(tweet.getBook().getTitle());
            r.n.setValue(tweet.getScore());
            r.o.setImageUrl(tweet.getBook().getCover());
            View view = r.j;
            view.setVisibility(tweet.getBook() == null ? View.GONE : View.VISIBLE);
        }
        if (this.f) {
            if (user.getGenderFlag() == 0) {
                r.p.setImageLevel(2);
                r.p.setVisibility(View.VISIBLE);
                return;
            }
            if (user.getGenderFlag() == 1) {
                r.p.setImageLevel(3);
                r.p.setVisibility(View.VISIBLE);
                return;
            }
            r.p.setImageLevel(4);
            r.p.setVisibility(View.VISIBLE);
            return;
        }
        if (user.isOfficial()) {
            r.p.setImageLevel(0);
            r.p.setVisibility(View.VISIBLE);
            return;
        }
        if (user.isDoyan()) {
            r.p.setImageLevel(1);
            r.p.setVisibility(View.VISIBLE);
            return;
        }
        r.p.setVisibility(View.GONE);
    }

    private void b(ViewHolder r) {
        r.h.setText("\u5173\u6ce8");
        r.h.setTextColor(this.a.getResources().getColor(R.color.tweet_operator_text_color));
        Drawable drawable = this.a.getResources().getDrawable(R.drawable.follow);
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
        r.h.setTextSize(10.0f);
        r.h.setCompoundDrawables(drawable, null, null, null);
    }

    @Override
    public int getItemViewType(int n) {
        return this.a((Tweet) this.getItem(n));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        int n2 = this.getItemViewType(n);
        View view2 = this.a(view, n2, viewGroup, n);
        final Tweet tweet = (Tweet) this.getItem(n);
        final ViewHolder r = (ViewHolder) view2.getTag();
        switch (n2) {
            case 0: {
                this.a(tweet, r);
                this.a(n2, view2, tweet);
                break;
            }
            case 2: {
                r.i.setText(tweet.getTitle());
                this.a(n2, view2, tweet);
                this.a(tweet, r);
                break;
            }
            case 1: {
                r.i.setText(tweet.getTitle());
                this.a(tweet, r);
                this.a(n2, view2, tweet);
                break;
            }
            case 3: {
                this.a(tweet, r);
                this.a(this.a(tweet), view2, tweet.getRefTweet());
            }
        }
        if (this.c) {
            this.a(r, tweet, null, true);
            return view2;
        }
        this.a(r, tweet, tweet.getUser(), false);
        G.a(r.g, 15, 15, 15, 15);
        r.g.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Account account = am.e();
                if (account == null) {
                    G.a(G.this).startActivity(AuthLoginActivity.a(G.a(G.this)));
                    return;
                }
                if (G.a(account, tweet)) {
                    String string = tweet.get_id();
                    String string2 = tweet.isRetween() ? tweet.getRefTweet().get_id() : string;
                    Tweet tweet2 = tweet.isRetween() ? tweet.getRefTweet() : tweet;
                    int n = 1 + tweet2.getRetweeted();
                    tweet.setRetweeted(n);
                    String text = "" + n;
                    r.g.setText(text);
                    com.clilystudio.netbook.util.e.a((Activity) G.this.a, "\t\t转发成功\t\t");
                    RetweenRecord.save2DB(account.getUser().getId(), string2);
                    e<String, Void, PostPublish> u2 = new e<String, Void, PostPublish>() {

                        @Override
                        protected PostPublish doInBackground(String... params) {
                            return this.c().m(params[0], params[1]);
                        }

                        @Override
                        protected void onPostExecute(PostPublish postPublish) {
                            super.onPostExecute(postPublish);
                            am.e();
                            if (postPublish != null) {
                                postPublish.isOk();
                            }
                        }
                    };
                    String[] arrobject = new String[]{am.e().getToken(), string2};
                    u2.execute(arrobject);
                    return;
                }
                String string = G.a(G.this).getString(R.string.retweeted);
                String string3 = G.a(tweet, account) && !tweet.isRetween() ? G.a(G.this).getString(R.string.not_can_retween_self) : string;
                com.clilystudio.netbook.util.e.a((Activity) G.this.a, "\t\t" + string3 + "\t\t");

            }
        });
        return view2;
    }

    @Override
    public int getViewTypeCount() {
        return 3;
    }

    final class ViewHolder {
        SmartImageView a;
        TextView b;
        TextView c;
        TextView d;
        TextView e;
        TextView f;
        TextView g;
        TextView h;
        TextView i;
        View j;
        PostFlag k;
        TextView l;
        TextView m;
        RatingView n;
        CoverView o;
        ImageView p;
        View q;

        public ViewHolder(View view) {
            this.q = view;
            this.a = (SmartImageView) view.findViewById(R.id.avatar);
            this.b = (TextView) view.findViewById(R.id.user);
            this.c = (TextView) view.findViewById(R.id.content);
            this.d = (TextView) view.findViewById(R.id.lv);
            this.e = (TextView) view.findViewById(R.id.time);
            this.f = (TextView) view.findViewById(R.id.comment_count);
            this.g = (TextView) view.findViewById(R.id.retween_count);
            this.h = (TextView) view.findViewById(R.id.follow);
            this.i = (TextView) view.findViewById(R.id.title);
            this.j = view.findViewById(R.id.review_rating_container);
            this.k = (PostFlag) view.findViewById(R.id.post_flag);
            this.l = (TextView) view.findViewById(R.id.tv_retweet);
            this.m = (TextView) view.findViewById(R.id.book_name);
            this.n = (RatingView) view.findViewById(R.id.review_rating);
            this.o = (CoverView) view.findViewById(R.id.book_cover);
            this.p = (ImageView) view.findViewById(R.id.avatar_verify);
        }
    }
}
