package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
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

import java.text.DecimalFormat;
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
    private View$OnClickListener j = new bs(this);
    private View$OnClickListener k = new bt(this);

    public static ReaderMenuFragment a(String String1, String String2) {
        ReaderMenuFragment ReaderMenuFragment3 = new ReaderMenuFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString("BOOK_ID", String1);
        Bundle4.putString("BOOK_TITLE", String2);
        ReaderMenuFragment3.setArguments(Bundle4);
        return ReaderMenuFragment3;
    }

    static void a(ReaderMenuFragment ReaderMenuFragment1, Activity Activity2, TocSummary TocSummary3) {
        Activity2.finish();
        MyApplication.a().c(ReaderMenuFragment1.e);
        am.c(ReaderMenuFragment1.e, 10);
        com.clilystudio.netbook.event.i.a().c(new v(1));
        ReaderMenuFragment1.startActivity(ReaderActivity.a((Context) ReaderMenuFragment1.getActivity(), ReaderMenuFragment1.e, ReaderMenuFragment1.f, TocSummary3.get_id(), null, true));
    }

    static void a(ReaderMenuFragment ReaderMenuFragment1, String String2, String String3, String String4) {
        ((DialogFragment) ReaderMenuFragment$DownLoadDialogFragment.a(String2, String3, String4)).show(ReaderMenuFragment1.getFragmentManager(), "DownloadDialog");
    }

    static void a(ReaderMenuFragment ReaderMenuFragment1, List List2) {
        if (ReaderMenuFragment1.getView() != null) {
            ViewGroup ViewGroup3 = (ViewGroup) ReaderMenuFragment1.getView().findViewById(2131493461);
            int int4 = List2.size();
            ReaderActivity ReaderActivity5 = (ReaderActivity) ReaderMenuFragment1.getActivity();
            String String6;
            int int7;
            int int8;
            int int10;

            if (ReaderActivity5 != null)
                String6 = ReaderActivity5.h();
            else
                String6 = null;
            int7 = 0;
            for (int8 = 0; int7 < int4 && int8 != 3; int8 = int10) {
                TocSummary TocSummary9 = (TocSummary) List2.get(int7);

                if (!TocSummary9.getHost().equals(String6)) {
                    Object Object11 = ReaderMenuFragment1.getActivity();
                    View View12 = ((Activity) Object11).getLayoutInflater().inflate(2130903297, ViewGroup3, false);
                    ReaderMenuFragment$TocHolder TocHolder13 = new ReaderMenuFragment$TocHolder(View12);

                    TocHolder13.link.setText((CharSequence) TocSummary9.getHost());
                    TocHolder13.time.setText((CharSequence) t.e(TocSummary9.getUpdated()));
                    TocHolder13.title.setText((CharSequence) TocSummary9.getLastChapter());
                    ViewGroup3.addView(View12);
                    View12.setOnClickListener((View$OnClickListener) new bw(ReaderMenuFragment1, (Activity) Object11, TocSummary9));
                    int10 = int8 + 1;
                } else
                    int10 = int8;
                ++int7;
            }
            if (int8 > 0) {
                ReaderMenuFragment1.getView().findViewById(2131493458).setVisibility(0);
                ReaderMenuFragment1.getView().findViewById(2131493459).setOnClickListener(ReaderMenuFragment1.j);
            }
        }
    }

    static boolean a(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.c();
    }

    static String b(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.h;
    }

    static String c(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.b;
    }

    static String d(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.c;
    }

    static String e(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.a;
    }

    static String f(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.e;
    }

    static String g(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.f;
    }

    static void h(ReaderMenuFragment ReaderMenuFragment1) {
        ReaderActivity ReaderActivity2 = (ReaderActivity) ReaderMenuFragment1.getActivity();

        if (ReaderActivity2 != null)
            ReaderActivity2.a(0);
    }

    static void i(ReaderMenuFragment ReaderMenuFragment1) {
        ReaderMenuFragment1.startActivity(RelateBookListActivity.a((Context) ReaderMenuFragment1.getActivity(), null, "\u4F60\u53EF\u80FD\u611F\u5174\u8DA3", ReaderMenuFragment1.e));
        com.clilystudio.netbook.umeng.a.b.a((Context) ReaderMenuFragment1.getActivity(), "reader_menu_relate_book_a");
    }

    static BaseShelfAd j(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.i;
    }

    static LoadingContainer k(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.g;
    }

    static void l(ReaderMenuFragment ReaderMenuFragment1) {
        new n().a((Context) ReaderMenuFragment1.getActivity(), "top");
    }

    static View$OnClickListener m(ReaderMenuFragment ReaderMenuFragment1) {
        return ReaderMenuFragment1.j;
    }

    static void n(ReaderMenuFragment ReaderMenuFragment1) {
        MenuAd MenuAd2 = com.clilystudio.netbook.util.a.a().b();

        if (MenuAd2 != null && ReaderMenuFragment1.getView() != null) {
            SmartImageView SmartImageView3 = (SmartImageView) ReaderMenuFragment1.getView().findViewById(2131493448);
            TextView TextView4 = (TextView) ReaderMenuFragment1.getView().findViewById(2131493449);
            TextView TextView5 = (TextView) ReaderMenuFragment1.getView().findViewById(2131493450);
            String String6;
            TextView TextView7;
            Object Object8;

            SmartImageView3.setDrawingCacheEnabled(true);
            SmartImageView3.setImageUrl(new StringBuilder().append(ApiService.a).append(MenuAd2.getIcon()).toString());
            String6 = new DecimalFormat("0.00").format(MenuAd2.getSize() / 1024L / 1024L);
            ReaderMenuFragment1.h = MenuAd2.getInsideLink();
            TextView7 = (TextView) ReaderMenuFragment1.getView().findViewById(2131492916);
            if (ReaderMenuFragment1.c())
                Object8 = "\u67E5\u770B";
            else
                Object8 = "\u5B89\u88C5";
            TextView7.setText((CharSequence) Object8);
            ReaderMenuFragment1.c = new StringBuilder().append(String6).append("M").toString();
            ReaderMenuFragment1.b = MenuAd2.getName();
            ReaderMenuFragment1.d = MenuAd2.get_id();
            ReaderMenuFragment1.a = MenuAd2.getDownload_link();
            TextView4.setText((CharSequence) MenuAd2.getName());
            TextView5.setText((CharSequence) MenuAd2.getIntro());
        }
    }

    private boolean c() {
        if (!android.text.TextUtils.isEmpty((CharSequence) h))
            return true;
        else
            return false;
    }

    public final String a() {
        return d;
    }

    public final String b() {
        return b;
    }

    public void onActivityCreated(Bundle Bundle1) {
        int int2;
        bA bA3;
        String[] String_1darray4;

        super.onActivityCreated(Bundle1);
        e = getArguments().getString("BOOK_ID");
        f = getArguments().getString("BOOK_TITLE");
        int2 = am.k((Context) getActivity());
        if (getView() != null && int2 != 0)
            getView().findViewById(2131493457).setPadding(0, int2, 1, 0);
        bA3 = new bA(this, (byte) 0);
        String_1darray4 = new String[1];
        String_1darray4[0] = e;
        bA3.b(String_1darray4);
        if (am.q((Context) getActivity()))
            new bz(this, (byte) 0).b(new Void[0]);
        else if (getView() != null) {
            getView().findViewById(2131492933).setVisibility(8);
            return;
        }
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903216, ViewGroup2, false);

        ((RelativeLayout) View4.findViewById(2131493446)).setPadding(0, am.k((Context) getActivity()), 0, 0);
        View4.findViewById(2131493452).setOnClickListener(j);
        g = (LoadingContainer) View4.findViewById(2131493460);
        View4.findViewById(2131493455).setOnClickListener(j);
        com.clilystudio.netbook.event.i.a().a(this);
        return View4;
    }

    public void onPause() {
        super.onPause();
        com.clilystudio.netbook.util.a.a().c();
    }

    public void onShowThirdAd(B B1) {
        if (getView() != null && B1 != null && am.q((Context) getActivity()) && B1.b().equals("top")) {
            View View2 = getView().findViewById(2131492933);

            if (View2 != null) {
                Advert Advert3 = B1.a();

                if (Advert3 != null && Advert3 instanceof BaseShelfAd) {
                    i = (BaseShelfAd) Advert3;
                    View2.setVisibility(0);
                    View2.setOnClickListener(k);
                    View2.findViewById(2131492916).setOnClickListener(k);
                    if (Advert3 != null && getView() != null) {
                        SmartImageView SmartImageView4 = (SmartImageView) getView().findViewById(2131493448);
                        TextView TextView5 = (TextView) getView().findViewById(2131493449);
                        TextView TextView6 = (TextView) getView().findViewById(2131493450);
                        TextView TextView7;
                        Object Object8;

                        SmartImageView4.setDrawingCacheEnabled(true);
                        SmartImageView4.setImageUrl(Advert3.getImg());
                        TextView7 = (TextView) getView().findViewById(2131492916);
                        if (Advert3.isApk())
                            Object8 = "\u5B89\u88C5";
                        else
                            Object8 = "\u67E5\u770B";
                        TextView7.setText((CharSequence) Object8);
                        TextView5.setText((CharSequence) Advert3.getTitle());
                        TextView6.setText((CharSequence) Advert3.getDesc());
                        return;
                    }
                } else {
                    View2.setVisibility(4);
                    return;
                }
            }
        }
    }
}
