package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;

import java.util.ArrayList;
import java.util.List;

public class MyTopicFragment extends Fragment {
    private F a;
    private G b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private com.clilystudio.netbook.adapter.F h;
    private List<TopicPost> i = new ArrayList();
    private String j;
    private j k = new E(this);

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903221, paramViewGroup, false);
        this.f = localView.findViewById(2131493085);
        this.g = ((TextView) localView.findViewById(2131493100));
        LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
        this.c = ((LabelPtrListView) localView.findViewById(2131493099));
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.e = localLayoutInflater.inflate(2130903325, null);
        this.d = ((ListView) this.c.h());
        if (a.i())
            this.d.setFooterDividersEnabled(false);
        this.d.addFooterView(this.e);
        this.e.setVisibility(8);
        this.c.setOnRefreshListener(new B(this));
        this.d.setOnItemClickListener(new D(this));
        this.h = new com.clilystudio.netbook.adapter.F(localLayoutInflater);
        this.d.setAdapter(this.h);
        Account localAccount = am.e();
        if (localAccount == null) {
            this.f.setVisibility(8);
            this.g.setVisibility(0);
            this.g.setText("请登录后查看");
            return localView;
        }
        this.j = localAccount.getToken();
        this.b = new G(this, 0);
        G localG = this.b;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.j;
        localG.b(arrayOfString);
        return localView;
    }
}

