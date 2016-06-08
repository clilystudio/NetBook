package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.TopicPost;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class TweetListFragment extends Fragment {
    private dO a;
    private dN b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private com.clilystudio.netbook.adapter.j h;
    private List<TopicPost> i = new ArrayList();
    private com.handmark.pulltorefresh.library.j j = new dM(this);

    private void a() {
        this.a = new dO(this, 0);
        this.a.b(new String[]{"50bff3ec209793513100001c", "updated"});
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        a();
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903211, paramViewGroup, false);
        this.f = localView.findViewById(2131493085);
        this.g = ((TextView) localView.findViewById(2131493100));
        this.c = ((PullToRefreshListView) localView.findViewById(2131493099));
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.d = ((ListView) this.c.h());
        this.e = paramLayoutInflater.inflate(2130903325, null);
        this.d.addFooterView(this.e);
        if (a.j())
            this.d.setFooterDividersEnabled(false);
        this.c.setOnRefreshListener(new dJ(this));
        this.d.setOnItemClickListener(new dL(this));
        this.h = new com.clilystudio.netbook.adapter.j(paramLayoutInflater);
        this.d.setAdapter(this.h);
        return localView;
    }
}

