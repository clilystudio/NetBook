package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.MenuAd;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.RelateBookListActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.LoadingContainer;
import com.umeng.a.b;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

public class ReaderMenuFragment extends Fragment {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private LoadingContainer g;
    private String h;
    private BaseShelfAd i;
    private View.OnClickListener j;
    private View.OnClickListener k;

    public ReaderMenuFragment() {
        this.j = new bs(this);
        this.k = new bt(this);
    }

    public static ReaderMenuFragment a(String string, String string2) {
        ReaderMenuFragment readerMenuFragment = new ReaderMenuFragment();
        Bundle bundle = new Bundle();
        bundle.putString("BOOK_ID", string);
        bundle.putString("BOOK_TITLE", string2);
        readerMenuFragment.setArguments(bundle);
        return readerMenuFragment;
    }

    static /* synthetic */ void a(ReaderMenuFragment readerMenuFragment, Activity activity, TocSummary tocSummary) {
        activity.finish();
        MyApplication.a().c(readerMenuFragment.e);
        am.c((String) readerMenuFragment.e, (int) 10);
        i.a().c(new v(1));
        readerMenuFragment.startActivity(ReaderActivity.a(readerMenuFragment.getActivity(), readerMenuFragment.e, readerMenuFragment.f, tocSummary.get_id(), null, true));
    }

    static /* synthetic */ void a(ReaderMenuFragment readerMenuFragment, String string, String string2, String string3) {
        ReaderMenuFragment$DownLoadDialogFragment.a(string, string2, string3).show(readerMenuFragment.getFragmentManager(), "DownloadDialog");
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ReaderMenuFragment readerMenuFragment, List list) {
        if (readerMenuFragment.getView() != null) {
            ViewGroup viewGroup = (ViewGroup) readerMenuFragment.getView().findViewById(2131493461);
            int n2 = list.size();
            ReaderActivity readerActivity = (ReaderActivity) readerMenuFragment.getActivity();
            String string = readerActivity != null ? readerActivity.h() : null;
            int n3 = 0;
            for (int k = 0; k < n2 && n3 != 3; ++k) {
                int n4;
                TocSummary tocSummary = (TocSummary) list.get(k);
                if (!tocSummary.getHost().equals(string)) {
                    FragmentActivity fragmentActivity = readerMenuFragment.getActivity();
                    View view = fragmentActivity.getLayoutInflater().inflate(2130903297, viewGroup, false);
                    ReaderMenuFragment$TocHolder readerMenuFragment$TocHolder = new ReaderMenuFragment$TocHolder(view);
                    readerMenuFragment$TocHolder.link.setText(tocSummary.getHost());
                    readerMenuFragment$TocHolder.time.setText(t.e((Date) tocSummary.getUpdated()));
                    readerMenuFragment$TocHolder.title.setText(tocSummary.getLastChapter());
                    viewGroup.addView(view);
                    view.setOnClickListener(new bw(readerMenuFragment, (Activity) fragmentActivity, tocSummary));
                    n4 = n3 + 1;
                } else {
                    n4 = n3;
                }
                n3 = n4;
            }
            if (n3 > 0) {
                readerMenuFragment.getView().findViewById(2131493458).setVisibility(View.VISIBLE);
                readerMenuFragment.getView().findViewById(2131493459).setOnClickListener(readerMenuFragment.j);
            }
        }
    }

    static /* synthetic */ boolean a(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.c();
    }

    static /* synthetic */ String b(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.h;
    }

    static /* synthetic */ String c(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.b;
    }

    static /* synthetic */ String d(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.c;
    }

    static /* synthetic */ String e(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.a;
    }

    static /* synthetic */ String f(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.e;
    }

    static /* synthetic */ String g(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.f;
    }

    static /* synthetic */ void h(ReaderMenuFragment readerMenuFragment) {
        ReaderActivity readerActivity = (ReaderActivity) readerMenuFragment.getActivity();
        if (readerActivity != null) {
            readerActivity.a(0);
        }
    }

    static /* synthetic */ void i(ReaderMenuFragment readerMenuFragment) {
        readerMenuFragment.startActivity(RelateBookListActivity.a((Context) readerMenuFragment.getActivity(), null, "\u4f60\u53ef\u80fd\u611f\u5174\u8da3", readerMenuFragment.e));
        b.a(readerMenuFragment.getActivity(), "reader_menu_relate_book_a");
    }

    static /* synthetic */ BaseShelfAd j(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.i;
    }

    static /* synthetic */ LoadingContainer k(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.g;
    }

    static /* synthetic */ void l(ReaderMenuFragment readerMenuFragment) {
        new n().a(readerMenuFragment.getActivity(), "top");
    }

    static /* synthetic */ View.OnClickListener m(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.j;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void n(ReaderMenuFragment readerMenuFragment) {
        MenuAd menuAd = a.a().b();
        if (menuAd != null && readerMenuFragment.getView() != null) {
            SmartImageView smartImageView = (SmartImageView) readerMenuFragment.getView().findViewById(2131493448);
            TextView textView = (TextView) readerMenuFragment.getView().findViewById(2131493449);
            TextView textView2 = (TextView) readerMenuFragment.getView().findViewById(2131493450);
            smartImageView.setDrawingCacheEnabled(true);
            smartImageView.setImageUrl(ApiService.a + menuAd.getIcon());
            String string = new DecimalFormat("0.00").format(menuAd.getSize() / 1024 / 1024);
            readerMenuFragment.h = menuAd.getInsideLink();
            TextView textView3 = (TextView) readerMenuFragment.getView().findViewById(2131492916);
            String string2 = readerMenuFragment.c() ? "\u67e5\u770b" : "\u5b89\u88c5";
            textView3.setText(string2);
            readerMenuFragment.c = string + "M";
            readerMenuFragment.b = menuAd.getName();
            readerMenuFragment.d = menuAd.get_id();
            readerMenuFragment.a = menuAd.getDownload_link();
            textView.setText(menuAd.getName());
            textView2.setText(menuAd.getIntro());
        }
    }

    private boolean c() {
        if (!TextUtils.isEmpty(this.h)) {
            return true;
        }
        return false;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.e = this.getArguments().getString("BOOK_ID");
        this.f = this.getArguments().getString("BOOK_TITLE");
        int n2 = am.k((Context) this.getActivity());
        if (this.getView() != null && n2 != 0) {
            this.getView().findViewById(2131493457).setPadding(0, n2, 1, 0);
        }
        bA bA2 = new bA(this, 0);
        String[] arrstring = new String[]{this.e};
        bA2.b(arrstring);
        if (am.q((Context) this.getActivity())) {
            new bz(this, 0).b((Object[]) new Void[0]);
            return;
        } else {
            if (this.getView() == null) return;
            {
                this.getView().findViewById(2131492933).setVisibility(View.GONE);
                return;
            }
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903216, viewGroup, false);
        ((RelativeLayout) view.findViewById(2131493446)).setPadding(0, am.k((Context) this.getActivity()), 0, 0);
        view.findViewById(2131493452).setOnClickListener(this.j);
        this.g = (LoadingContainer) view.findViewById(2131493460);
        view.findViewById(2131493455).setOnClickListener(this.j);
        i.a().a(this);
        return view;
    }

    @Override
    public void onPause() {
        super.onPause();
        a.a().c();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @l
    public void onShowThirdAd(B b2) {
        if (this.getView() == null) return;
        if (b2 == null) return;
        if (!am.q((Context) this.getActivity())) return;
        if (!b2.b().equals("top")) {
            return;
        }
        View view = this.getView().findViewById(2131492933);
        if (view == null) return;
        Advert advert = b2.a();
        if (advert != null && advert instanceof BaseShelfAd) {
            this.i = (BaseShelfAd) advert;
            view.setVisibility(View.VISIBLE);
            view.setOnClickListener(this.k);
            view.findViewById(2131492916).setOnClickListener(this.k);
            if (advert == null) return;
            if (this.getView() == null) return;
            SmartImageView smartImageView = (SmartImageView) this.getView().findViewById(2131493448);
            TextView textView = (TextView) this.getView().findViewById(2131493449);
            TextView textView2 = (TextView) this.getView().findViewById(2131493450);
            smartImageView.setDrawingCacheEnabled(true);
            smartImageView.setImageUrl(advert.getImg());
            TextView textView3 = (TextView) this.getView().findViewById(2131492916);
            String string = advert.isApk() ? "\u5b89\u88c5" : "\u67e5\u770b";
            textView3.setText(string);
            textView.setText(advert.getTitle());
            textView2.setText(advert.getDesc());
            return;
        }
        view.setVisibility(4);
    }
}
