package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.support.v7.app.j;
import android.view.LayoutInflater;
import android.widget.ListAdapter;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.adapter.h;
import com.clilystudio.netbook.event.f;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.Review;

import java.util.ArrayList;
import java.util.List;

public class BookReviewListFragment extends BookPostListFragment {
    private aI h;
    private aH i;
    private h j;
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
        k2.a(2131034424, (DialogInterface.OnClickListener) new aD(bookReviewListFragment, review));
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

    static /* synthetic */ void g(BookReviewListFragment bookReviewListFragment) {
        if (bookReviewListFragment.e.getVisibility() == 8) {
            bookReviewListFragment.e.setVisibility(View.VISIBLE);
            bookReviewListFragment.e.setImageResource(2130837883);
            bookReviewListFragment.e.setOnClickListener(new aC(bookReviewListFragment));
            bookReviewListFragment.e.setContentDescription("\u5199\u4e66\u8bc4");
        }
    }

    static /* synthetic */ h h(BookReviewListFragment bookReviewListFragment) {
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
        this.j = new h(LayoutInflater.from(this.getActivity()));
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
        i.a().a(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onRefreshEvent(f f2) {
        if (this.a != null) {
            this.a.setRefreshing();
        }
    }
}
