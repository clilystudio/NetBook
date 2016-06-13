package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ListAdapter;

import com.clilystudio.netbook.adapter.j;
import com.clilystudio.netbook.event.f;
import com.clilystudio.netbook.model.TopicPost;

import java.util.ArrayList;
import java.util.List;

public class BookTopicListFragment
        extends BookPostListFragment {
    private aR h;
    private aQ i;
    private j j;
    private List<TopicPost> k = new ArrayList<TopicPost>();
    private com.handmark.pulltorefresh.library.j l;

    public BookTopicListFragment() {
        this.l = new aP(this);
    }

    static /* synthetic */ aQ a(BookTopicListFragment bookTopicListFragment, aQ aQ2) {
        bookTopicListFragment.i = aQ2;
        return aQ2;
    }

    static /* synthetic */ void a(BookTopicListFragment bookTopicListFragment) {
        CharSequence[] arrcharSequence = new String[]{"\u9ed8\u8ba4\u6392\u5e8f", "\u6700\u65b0\u53d1\u5e03", "\u6700\u591a\u8bc4\u8bba"};
        AlertDialog.Builder builder = new AlertDialog.Builder(bookTopicListFragment.getActivity());
        builder.setTitle("\u6392\u5e8f");
        builder.setSingleChoiceItems(arrcharSequence, bookTopicListFragment.g, (DialogInterface.OnClickListener) new aO(bookTopicListFragment));
        builder.setNegativeButton("\u53d6\u6d88", null);
        AlertDialog alertDialog = builder.create();
        alertDialog.setCanceledOnTouchOutside(true);
        alertDialog.show();
    }

    static /* synthetic */ aQ b(BookTopicListFragment bookTopicListFragment) {
        return bookTopicListFragment.i;
    }

    static /* synthetic */ void c(BookTopicListFragment bookTopicListFragment) {
        bookTopicListFragment.e();
    }

    public static BookTopicListFragment d() {
        return new BookTopicListFragment();
    }

    static /* synthetic */ List d(BookTopicListFragment bookTopicListFragment) {
        return bookTopicListFragment.k;
    }

    static /* synthetic */ void e(BookTopicListFragment bookTopicListFragment) {
        ((BookPostTabActivity) bookTopicListFragment.getActivity()).k();
    }

    static /* synthetic */ void f(BookTopicListFragment bookTopicListFragment) {
        if (bookTopicListFragment.e.getVisibility() == 8) {
            bookTopicListFragment.e.setVisibility(0);
            bookTopicListFragment.e.setImageResource(2130837885);
            bookTopicListFragment.e.setOnClickListener(new aN(bookTopicListFragment));
            bookTopicListFragment.e.setContentDescription("\u53d1\u5e03\u8ba8\u8bba");
        }
    }

    static /* synthetic */ j g(BookTopicListFragment bookTopicListFragment) {
        return bookTopicListFragment.j;
    }

    static /* synthetic */ com.handmark.pulltorefresh.library.j h(BookTopicListFragment bookTopicListFragment) {
        return bookTopicListFragment.l;
    }

    static /* synthetic */ aR i(BookTopicListFragment bookTopicListFragment) {
        return bookTopicListFragment.h;
    }

    private void e() {
        aR aR2 = this.h = new aR(this, 0);
        String[] arrstring = new String[]{this.a(), this.f};
        aR2.b(arrstring);
    }

    @Override
    public final void b() {
        super.b();
        this.d.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a.setOnRefreshListener(new aK(this));
        this.b.setOnItemClickListener(new aM(this));
        this.j = new j(LayoutInflater.from(this.getActivity()));
        this.b.setAdapter((ListAdapter) ((Object) this.j));
        this.f = ((BookPostTabActivity) this.getActivity()).l();
        (BookPostTabActivity) this.getActivity();
        this.g = BookPostTabActivity.a(this.f);
        this.e();
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ((BookPostTabActivity) activity).a(new aJ(this));
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
