package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.post.OtherUserActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.t;

import java.util.Date;

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
        this.f =com.clilystudio.netbook.hpay100.a.a.r(this.a, "community_user_gender_icon_toggle");
    }

    static /* synthetic */ Context a(G g2) {
        return g2.a;
    }

    static /* synthetic */ View a(G g2, View view) {
        g2.d = view;
        return view;
    }

    private static void a(View view, int n, int n2, int n3, int n4) {
        ((View) ((Object) view.getParent())).post(new Q(view, 15, 15, 15, 15));
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(G g2, R_ViewHolder r, User user) {
        Account account = am.e();
        if (account == null) {
            g2.a.startActivity(AuthLoginActivity.a(g2.a));
            return;
        }
        if (!g2.b || user == null) return;
        {
            if (G.a(account, user)) {
                g2.b(r);
                V_Clazz v = new V_Clazz(g2, (byte)0);
                String[] arrstring = new String[]{account.getToken(), user.getId()};
                v.execute(arrstring);
                return;
            }
        }
        g2.a(r);
        T_Task t = new T_Task(g2, (byte)0);
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

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(G g2, Tweet tweet, R_ViewHolder r) {
        Tweet tweet2 = tweet.isRetween() ? tweet.getRefTweet() : tweet;
        int n = 1 + tweet2.getRetweeted();
        tweet.setRetweeted(n);
        r.g.setText("" + n);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean a(Account account, Tweet tweet) {
        if (G.a(tweet, account)) {
            return false;
        }
        if (tweet.isRetween()) {
            tweet = tweet.getRefTweet();
        }
        if (G.a(account, tweet.get_id())) return false;
        return true;
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

    static /* synthetic */ View b(G g2) {
        return g2.d;
    }

    static /* synthetic */ void b(G g2, Tweet tweet) {
        if (tweet.getPost() == null) {
            g2.a.startActivity(TweetDetailActivity.a(g2.a, tweet.get_id(), "ARTICLE"));
            return;
        }
        g2.a.startActivity(PostDetailActivity.a(g2.a, tweet.getPost().getId(), tweet.getPost().getBlock()));
    }

    static /* synthetic */ Tweet c(G g2) {
        return g2.e;
    }

    /*
     * Enabled aggressive block sorting
     */
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
        if (var2_2.equals("TWEET")) {
            return 0;
        } else if (var2_2.equals("RETWEET")) {
            return 1;
        } else if (var2_2.equals("REVIEW")) {
            return 2;
        } if (var2_2.equals("ARTICLE")) {
            return 3;
        } else {
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
            default: {
                return view;
            }
            case 0: {
                View view2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet, viewGroup, false);
                view2.setTag(new R_ViewHolder(this, view2));
                return view2;
            }
            case 1: {
                View view3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet_comment, viewGroup, false);
                view3.findViewById(R.id.review_rating_container).setVisibility(View.VISIBLE);
                view3.setTag(new R_ViewHolder(this, view3));
                return view3;
            }
            case 2: {
                View view4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_tweet_artics, viewGroup, false);
                view4.setTag(new R_ViewHolder(this, view4));
                return view4;
            }
            case 3:
        }
        return this.a(view, this.a(((Tweet) this.getItem(n2)).getRefTweet()), viewGroup, n2);
    }

    private void a(int n, View view, Tweet tweet) {
        switch (n) {
            default: {
                return;
            }
            case 0: {
                view.setOnClickListener(new H(this, tweet));
                return;
            }
            case 2: {
                view.setOnClickListener(new I(this, tweet));
                return;
            }
            case 1:
        }
        view.setOnClickListener(new J(this, tweet));
    }

    private void a(R_ViewHolder r) {
        r.h.setText("\u5df2\u5173\u6ce8");
        r.h.setTextColor(0xa72600);
        r.h.setTextSize(10.0f);
        Drawable drawable = this.a.getResources().getDrawable(R.drawable.ic_followed);
        drawable.setBounds(0, 0, 9 * drawable.getMinimumWidth() / 16, 9 * drawable.getMinimumHeight() / 16);
        r.h.setCompoundDrawables(drawable, null, null, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(R_ViewHolder r, Tweet tweet, User user, boolean bl) {
        G.a(r.h, 15, 15, 15, 15);
        r.h.setVisibility(View.VISIBLE);
        if (bl) {
            r.h.setOnClickListener(new N(this, r, tweet));
            r.h.setText("\u5220\u9664");
            Drawable drawable = r.h.getResources().getDrawable(R.drawable.ic_recycle_bin);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
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
        r.h.setOnClickListener(new M(this, r, user));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Tweet tweet, R_ViewHolder r) {
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
            r.l.setText(" " + string + " \u8f6c\u53d1\u4e86\u8fd9\u6761\u52a8\u6001");
            r.e.setText(t.e((Date) tweet.getCreated()));
            tweet.getRefTweet().setUser(tweet.getFrom());
            tweet = tweet.getRefTweet();
        } else {
            r.l.setVisibility(View.GONE);
            r.e.setText(t.e((Date) tweet.getCreated()));
        }
        r.a.setImageUrl(user.getFullAvatar());
        if (this.a(tweet) != 0) {
            r.i.setText(tweet.getTitle());
        }
        r.b.setText(user.getNickname());
        r.c.setText(tweet.getContent());
        r.d.setText("lv." + user.getLv());
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
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            r.f.setCompoundDrawables(drawable, null, null, null);
            TextView textView = r.f;
            if (tweet.getCommented() == 0) {
                string = "\u8bc4\u8bba";
            }
            textView.setText(string);
        } else {
            Drawable drawable = this.a.getResources().getDrawable(R.drawable.ic_vote);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
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
        Intent intent = OtherUserActivity.a(this.a);
        intent.putExtra("USER_ID", tweet.getUser().getId());
        intent.putExtra("USER_NAME", tweet.getUser().getNickname());
        r.a.setOnClickListener(new K(this, intent));
        if (tweet != null && 1 == this.a(tweet)) {
            r.m.setText(tweet.getBook().getTitle());
            r.n.setValue(tweet.getScore());
            r.o.setImageUrl(tweet.getBook().getCover());
            View view = r.j;
            view.setVisibility(tweet.getBook() == null ?View.GONE : View.VISIBLE);
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

    private void b(R_ViewHolder r) {
        r.h.setText("\u5173\u6ce8");
        r.h.setTextColor(this.a.getResources().getColor(R.color.tweet_operator_text_color));
        Drawable drawable = this.a.getResources().getDrawable(R.drawable.follow);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
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
        Tweet tweet = (Tweet) this.getItem(n);
        R_ViewHolder r = (R_ViewHolder) view2.getTag();
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
        r.g.setOnClickListener(new L(this, tweet, r));
        return view2;
    }

    @Override
    public int getViewTypeCount() {
        return 3;
    }
}
