package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;

import java.util.ArrayList;
import java.util.List;

public class MyTopicFragment
        extends Fragment {
    private F a;
    private G b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private com.clilystudio.netbook.adapter.F h;
    private List<TopicPost> i = new ArrayList<TopicPost>();
    private String j;
    private j k;

    public MyTopicFragment() {
        this.k = new E(this);
    }

    static /* synthetic */ TextView a(MyTopicFragment myTopicFragment) {
        return myTopicFragment.g;
    }

    static /* synthetic */ F a(MyTopicFragment myTopicFragment, F f) {
        myTopicFragment.a = f;
        return f;
    }

    static /* synthetic */ G a(MyTopicFragment myTopicFragment, G g) {
        myTopicFragment.b = g;
        return g;
    }

    static /* synthetic */ void a(MyTopicFragment myTopicFragment, int n) {
        myTopicFragment.c.setCountText("\u5171\u53d1\u5e03\u4e86%d\u6761\u8bdd\u9898", n);
    }

    static /* synthetic */ String b(MyTopicFragment myTopicFragment) {
        return myTopicFragment.j;
    }

    static /* synthetic */ View c(MyTopicFragment myTopicFragment) {
        return myTopicFragment.f;
    }

    static /* synthetic */ LabelPtrListView d(MyTopicFragment myTopicFragment) {
        return myTopicFragment.c;
    }

    static /* synthetic */ F e(MyTopicFragment myTopicFragment) {
        return myTopicFragment.a;
    }

    static /* synthetic */ G f(MyTopicFragment myTopicFragment) {
        return myTopicFragment.b;
    }

    static /* synthetic */ ListView g(MyTopicFragment myTopicFragment) {
        return myTopicFragment.d;
    }

    static /* synthetic */ List h(MyTopicFragment myTopicFragment) {
        return myTopicFragment.i;
    }

    static /* synthetic */ View i(MyTopicFragment myTopicFragment) {
        return myTopicFragment.e;
    }

    static /* synthetic */ j j(MyTopicFragment myTopicFragment) {
        return myTopicFragment.k;
    }

    static /* synthetic */ com.clilystudio.netbook.adapter.F k(MyTopicFragment myTopicFragment) {
        return myTopicFragment.h;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903221, viewGroup, false);
        this.f = view.findViewById(2131493085);
        this.g = (TextView) view.findViewById(2131493100);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = (LabelPtrListView) view.findViewById(2131493099);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.e = layoutInflater2.inflate(2130903325, null);
        this.d = (ListView) this.c.h();
        if (a.i()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.d.addFooterView(this.e);
        this.e.setVisibility(8);
        this.c.setOnRefreshListener(new B(this));
        this.d.setOnItemClickListener(new D(this));
        this.h = new com.clilystudio.netbook.adapter.F(layoutInflater2);
        this.d.setAdapter(this.h);
        Account account = am.e();
        if (account == null) {
            this.f.setVisibility(8);
            this.g.setVisibility(0);
            this.g.setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
            return view;
        }
        this.j = account.getToken();
        G g2 = this.b = new G(this, 0);
        String[] arrstring = new String[]{this.j};
        g2.b(arrstring);
        return view;
    }
}
