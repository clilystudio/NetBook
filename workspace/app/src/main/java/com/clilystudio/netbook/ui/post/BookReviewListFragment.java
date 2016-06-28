package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.support.v7.app.j;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.f;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;

import java.util.ArrayList;
import java.util.List;

public class BookReviewListFragment extends BookPostListFragment {
    private aI h;
    private aH i;
    private com.clilystudio.netbook.util.W<BookReview> j;
    private List<BookReview> k = new ArrayList<BookReview>();
    private com.handmark.pulltorefresh.library.j l;

    public BookReviewListFragment() {
        this.l = new aF(this);
    }

    static /* synthetic */ aH a(BookReviewListFragment bookReviewListFragment, aH aH2) {
        bookReviewListFragment.i = aH2;
        return aH2;
    }

    static /* synthetic */ void a(BookReviewListFragment bookReviewListFragment) {
        CharSequence[] arrcharSequence = new String[]{"\u9ed8\u8ba4\u6392\u5e8f", "\u6700\u65b0\u53d1\u5e03", "\u6700\u591a\u8bc4\u8bba"};
        k k2 = new k(bookReviewListFragment.getActivity());
        k2.a("\u6392\u5e8f");
        k2.a(arrcharSequence, bookReviewListFragment.g, new aE(bookReviewListFragment));
        k2.b("\u53d6\u6d88", null);
        j j2 = k2.b();
        j2.setCanceledOnTouchOutside(true);
        j2.show();
    }

    static /* synthetic */ void a(BookReviewListFragment bookReviewListFragment, Review review) {
        MyApplication.a().a("saveToLocalReviewTitle", review.getTitle());
        MyApplication.a().a("saveToLocalReviewDesc", review.getContent());
        Intent intent = new Intent(bookReviewListFragment.getActivity(), AddReviewRatingActivity.class);
        intent.putExtra("bookReviewBookId", bookReviewListFragment.a());
        intent.putExtra("isFromBookReviewList", true);
        intent.putExtra("AddBookReviewRating", review.getRating());
        bookReviewListFragment.startActivity(intent);
    }

    static /* synthetic */ aH b(BookReviewListFragment bookReviewListFragment) {
        return bookReviewListFragment.i;
    }

    static /* synthetic */ void b(BookReviewListFragment bookReviewListFragment, Review review) {
        k k2 = new k(bookReviewListFragment.getActivity());
        k2.a("\u518d\u6b21\u7f16\u8f91");
        k2.b("\u5373\u5c06\u8f7d\u5165\u4e4b\u524d\u53d1\u5e03\u7684\u4e66\u8bc4");
        k2.a(R.string.ok, (DialogInterface.OnClickListener) new aD(bookReviewListFragment, review));
        k2.c();
    }

    static /* synthetic */ void c(BookReviewListFragment bookReviewListFragment) {
        bookReviewListFragment.e();
    }

    public static BookReviewListFragment d() {
        return new BookReviewListFragment();
    }

    static /* synthetic */ List d(BookReviewListFragment bookReviewListFragment) {
        return bookReviewListFragment.k;
    }

    static /* synthetic */ void e(BookReviewListFragment bookReviewListFragment) {
        Account account = am.e();
        if (account != null) {
            aG aG2 = new aG(bookReviewListFragment, bookReviewListFragment.getActivity());
            String[] arrstring = new String[]{bookReviewListFragment.a(), account.getToken()};
            aG2.b(arrstring);
            return;
        }
        bookReviewListFragment.f();
    }

    static /* synthetic */ void f(BookReviewListFragment bookReviewListFragment) {
        bookReviewListFragment.f();
    }

    static /* synthetic */ void g(final BookReviewListFragment bookReviewListFragment) {
        if (bookReviewListFragment.e.getVisibility() == View.GONE) {
            bookReviewListFragment.e.setVisibility(View.VISIBLE);
            bookReviewListFragment.e.setImageResource(R.drawable.ic_fab_book_review);
            bookReviewListFragment.e.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    BookReviewListFragment.e(bookReviewListFragment);
                }
            });
            bookReviewListFragment.e.setContentDescription("\u5199\u4e66\u8bc4");
        }
    }

    static /* synthetic */ W<BookReview> h(BookReviewListFragment bookReviewListFragment) {
        return bookReviewListFragment.j;
    }

    static /* synthetic */ com.handmark.pulltorefresh.library.j i(BookReviewListFragment bookReviewListFragment) {
        return bookReviewListFragment.l;
    }

    static /* synthetic */ aI j(BookReviewListFragment bookReviewListFragment) {
        return bookReviewListFragment.h;
    }

    private void e() {
        aI aI2 = this.h = new aI(this, 0);
        String[] arrstring = new String[]{this.a(), this.f};
        aI2.b(arrstring);
    }

    private void f() {
        Intent intent = new Intent(this.getActivity(), AddReviewRatingActivity.class);
        intent.putExtra("bookReviewBookId", this.a());
        intent.putExtra("isFromBookReviewList", true);
        this.startActivity(intent);
    }

    @Override
    public final void b() {
        super.b();
        this.d.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8bc4\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a.setOnRefreshListener(new az(this));
        this.b.setOnItemClickListener(new aB(this));
        this.j = new W<BookReview>(LayoutInflater.from(this.getActivity()), R.layout.list_item_book_review){

            @Override
            protected void a(int var1, final BookReview bookReview) {
                final Author author = bookReview.author;
                if (am.m(getContext())) {
                    ((SmartImageView) this.a(0, SmartImageView.class)).setImageResource(R.drawable.avatar_default);
                } else {
                    ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
                    ((SmartImageView) this.a(0, SmartImageView.class)).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            v.getContext().startActivity(com.clilystudio.netbook.util.e.a(v.getContext(), bookReview.author));
                        }
                    });
                }
                this.a(1, author.getNickname());
                this.a(2, "lv." + author.getLv());
                TextView textView = (TextView) this.a(3, TextView.class);
                PostFlag postFlag = (PostFlag) this.a(4, PostFlag.class);
                if (postFlag.a(bookReview.state)) {
                    textView.setVisibility(View.GONE);
                    postFlag.setVisibility(View.VISIBLE);
                } else {
                    textView.setVisibility(View.VISIBLE);
                    textView.setText(t.e(bookReview.created));
                    postFlag.setVisibility(View.GONE);
                }
                this.a(5, bookReview.title);
                this.a(6, bookReview.content);
                this.a(7, "" + bookReview.helpful.getYes());
                ImageView imageView = (ImageView) this.a(8, ImageView.class);
                if (com.clilystudio.netbook.hpay100.a.a.r(getContext(), "community_user_gender_icon_toggle")) {
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
                    } else if ("doyen".equals(string)) {
                        imageView.setVisibility(View.VISIBLE);
                        imageView.setImageLevel(1);
                    } else {
                        imageView.setVisibility(View.GONE);
                    }
                }
                ((RatingView) this.a(9, RatingView.class)).setValue(bookReview.rating);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.post_flag, R.id.title, R.id.content, R.id.helpful_count, R.id.avatar_verify, R.id.rating};
            }
        };
        this.b.setAdapter((ListAdapter) ((Object) this.j));
        this.f = ((BookPostTabActivity) this.getActivity()).l();
        (BookPostTabActivity) this.getActivity();
        this.g = BookPostTabActivity.a(this.f);
        this.e();
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ((BookPostTabActivity) activity).b((ax) ((Object) new ay(this)));
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().register(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
    }

    @l
    public void onRefreshEvent(f f2) {
        if (this.a != null) {
            this.a.setRefreshing();
        }
    }
}
