package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.PayVoucherRecord;
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
    private List<PayVoucherRecord.Voucher> j = new ArrayList<PayVoucherRecord.Voucher>();
    private j k;

    public PayVoucherFragment() {
        this.k = new ae(this);
    }

    public static PayVoucherFragment a(String string, int n) {
        PayVoucherFragment payVoucherFragment = new PayVoucherFragment();
        Bundle bundle = new Bundle();
        bundle.putString("token_key", string);
        bundle.putInt("tag_index_key", n);
        payVoucherFragment.setArguments(bundle);
        return payVoucherFragment;
    }

    static /* synthetic */ af a(PayVoucherFragment payVoucherFragment, af af2) {
        payVoucherFragment.i = af2;
        return af2;
    }

    static /* synthetic */ List a(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.j;
    }

    static /* synthetic */ View b(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.h;
    }

    static /* synthetic */ af c(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.i;
    }

    static /* synthetic */ String[] d(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.a;
    }

    static /* synthetic */ View e(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.g;
    }

    static /* synthetic */ View f(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.f;
    }

    static /* synthetic */ PullToRefreshListView g(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.d;
    }

    static /* synthetic */ ag h(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.c;
    }

    static /* synthetic */ j i(PayVoucherFragment payVoucherFragment) {
        return payVoucherFragment.k;
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.g.setVisibility(View.VISIBLE);
        this.j.clear();
        this.c.a(this.j);
        this.i = new af(this);
        this.i.b((Object[]) new String[0]);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(R.layout.fragment_pay_voucher, viewGroup, false);
        this.a = this.getActivity().getResources().getStringArray(R.array.pay_voucher_params);
        this.b = this.getActivity().getResources().getStringArray(R.array.pay_voucher_empty_texts);
        this.d = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.e = (ListView) this.d.h();
        this.g = view.findViewById(R.id.pb_loading);
        this.h = view.findViewById(R.id.empty_view);
        ((TextView) view.findViewById(R.id.voucher_empty_text)).setText(this.b[this.getArguments().getInt("tag_index_key")]);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.f = layoutInflater2.inflate(R.layout.loading_item, null);
        if (a.i()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.e.addFooterView(this.f);
        this.f.setVisibility(View.GONE);
        this.e.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new ab(this)));
        this.d.setOnRefreshListener(new ac(this));
        this.c = new ag(this, layoutInflater2);
        this.e.setAdapter((ListAdapter) ((Object) this.c));
        return view;
    }
}
