package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.PayVoucherRecord.Voucher;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class PayVoucherFragment extends Fragment {
    private String[] a;
    private String[] b;
    private ag c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private View h;
    private af i;
    private List<PayVoucherRecord.Voucher> j = new ArrayList();
    private j k = new ae(this);

    public static PayVoucherFragment a(String paramString, int paramInt) {
        PayVoucherFragment localPayVoucherFragment = new PayVoucherFragment();
        Bundle localBundle = new Bundle();
        localBundle.putString("token_key", paramString);
        localBundle.putInt("tag_index_key", paramInt);
        localPayVoucherFragment.setArguments(localBundle);
        return localPayVoucherFragment;
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        this.g.setVisibility(0);
        this.j.clear();
        this.c.a(this.j);
        this.i = new af(this);
        this.i.b(new String[0]);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
        View localView = paramLayoutInflater.inflate(2130903215, paramViewGroup, false);
        this.a = getActivity().getResources().getStringArray(2131361800);
        this.b = getActivity().getResources().getStringArray(2131361799);
        this.d = ((PullToRefreshListView) localView.findViewById(2131493099));
        this.e = ((ListView) this.d.h());
        this.g = localView.findViewById(2131493085);
        this.h = localView.findViewById(2131493444);
        ((TextView) localView.findViewById(2131493445)).setText(this.b[getArguments().getInt("tag_index_key")]);
        LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
        this.f = localLayoutInflater.inflate(2130903325, null);
        if (a.i())
            this.e.setFooterDividersEnabled(false);
        this.e.addFooterView(this.f);
        this.f.setVisibility(8);
        this.e.setOnItemClickListener(new ab(this));
        this.d.setOnRefreshListener(new ac(this));
        this.c = new ag(this, localLayoutInflater);
        this.e.setAdapter(this.c);
        return localView;
    }
}

