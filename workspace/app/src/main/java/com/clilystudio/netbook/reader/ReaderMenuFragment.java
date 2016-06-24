package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.*;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.a_pack.f;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.*;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.RelateBookListActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.LoadingContainer;
import com.umeng.a.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

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
        this.j = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switch (v.getId()) {
                    default: {
                        return;
                    }
                    case R.id.download:
                    case R.id.slm_reader_layout_ad: {
                        if (!ReaderMenuFragment.a(ReaderMenuFragment.this)) {
                            ReaderMenuFragment.a(ReaderMenuFragment.this, ReaderMenuFragment.c(ReaderMenuFragment.this), ReaderMenuFragment.d(ReaderMenuFragment.this), ReaderMenuFragment.e(ReaderMenuFragment.this));
                            return;
                        }
                        ReaderMenuFragment.this.startActivity(new InsideLinkIntent((Context) ReaderMenuFragment.this.getActivity(), ReaderMenuFragment.b(ReaderMenuFragment.this)));
                        return;
                    }
                    case R.id.slm_reader_all_post: {
                        MiStatInterface.recordCountEvent("reader_menu_topic", null);
                         Intent intent = BookPostTabActivity.a(ReaderMenuFragment.this.getActivity(), ReaderMenuFragment.f(ReaderMenuFragment.this), ReaderMenuFragment.g(ReaderMenuFragment.this));
                        intent.putExtra("extra_sort_type", "created");
                        ReaderMenuFragment.this.startActivity(intent);
                        new com.clilystudio.netbook.a_pack.f(ReaderMenuFragment.f(ReaderMenuFragment.this)).b(new Void[0]);
                        ReaderMenuFragment.h(ReaderMenuFragment.this);
                        return;
                    }
                    case R.id.slm_reader_relate_book: {
                        ReaderMenuFragment.i(ReaderMenuFragment.this);
                        return;
                    }
                    case R.id.slm_reader_more_source: {
                        ReaderActivity readerActivity = (ReaderActivity) ReaderMenuFragment.this.getActivity();
                        if (readerActivity == null) return;
                        readerActivity.i();
                        return;
                    }
                }

            }
        };
        this.k = new View.OnClickListener() {
            @Override
            public void onClick(final View v) {
                if (!ReaderMenuFragment.j(ReaderMenuFragment.this).isApk()) {
                    ReaderMenuFragment.j(ReaderMenuFragment.this).onAdClick(v);
                    return;
                }
                h h2 = new h(ReaderMenuFragment.this.getActivity()).a(R.string.download);
                h2.e = "是否下载" + ReaderMenuFragment.j(ReaderMenuFragment.this).getTitle() + "(\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f";
                h2.a(true).a("确认",new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        ReaderMenuFragment.j(ReaderMenuFragment.this).onAdClick(v);
                        ReaderMenuFragment.j(ReaderMenuFragment.this).recordClick(v);
                    }
                }).b("取消",new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                   }
                }).b();
            }
        };
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
        DownLoadDialogFragment.a(string, string2, string3).show(readerMenuFragment.getFragmentManager(), "DownloadDialog");
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final ReaderMenuFragment readerMenuFragment, List list) {
        if (readerMenuFragment.getView() != null) {
            ViewGroup viewGroup = (ViewGroup) readerMenuFragment.getView().findViewById(R.id.toc_container);
            int n2 = list.size();
            ReaderActivity readerActivity = (ReaderActivity) readerMenuFragment.getActivity();
            String string = readerActivity != null ? readerActivity.h() : null;
            int n3 = 0;
            for (int k = 0; k < n2 && n3 != 3; ++k) {
                int n4;
                final TocSummary tocSummary = (TocSummary) list.get(k);
                if (!tocSummary.getHost().equals(string)) {
                    final FragmentActivity fragmentActivity = readerMenuFragment.getActivity();
                    View view = fragmentActivity.getLayoutInflater().inflate(R.layout.list_item_reader_menu_toc, viewGroup, false);
                    TocHolder TocHolder = new TocHolder(view);
                    TocHolder.link.setText(tocSummary.getHost());
                    TocHolder.time.setText(t.e((Date) tocSummary.getUpdated()));
                    TocHolder.title.setText(tocSummary.getLastChapter());
                    viewGroup.addView(view);
//                    bw(readerMenuFragment, (Activity) fragmentActivity, tocSummary)
                    view.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            // h -> lewisjdeane/L-Dialogs DialogBuilder
                            h h2 = new h(fragmentActivity);
                            h2.e = "更换来源将会删除之前的预读章节，是否继续？";
                            h2.a("更换",new DialogInterface.OnClickListener(){
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    dialog.dismiss();
                                    ReaderMenuFragment.a(readerMenuFragment, fragmentActivity, tocSummary);
                                }
                            }).b("\u53d6\u6d88", null).b();
                        }
                    });
                    n4 = n3 + 1;
                } else {
                    n4 = n3;
                }
                n3 = n4;
            }
            if (n3 > 0) {
                readerMenuFragment.getView().findViewById(R.id.slm_reader_sources).setVisibility(View.VISIBLE);
                readerMenuFragment.getView().findViewById(R.id.slm_reader_more_source).setOnClickListener(readerMenuFragment.j);
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
//        new n().a(readerMenuFragment.getActivity(), "top");
    }

    static /* synthetic */ View.OnClickListener m(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.j;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void n(ReaderMenuFragment readerMenuFragment) {
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
            this.getView().findViewById(R.id.slm_frame).setPadding(0, n2, 1, 0);
        }
        com.clilystudio.netbook.a_pack.e<String, Void, List<TocSummary>> bA2 = new e<String, Void, List<TocSummary>>(){

            @Override
            protected List<TocSummary> doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                List<TocSummary> list = com.clilystudio.netbook.api.b.b().d(params[0]);
                return list;
            }

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                ReaderMenuFragment.k(ReaderMenuFragment.this).c();
            }

            @Override
            protected void onPostExecute(List<TocSummary> tocSummaries) {
                super.onPostExecute(tocSummaries);
                if (getActivity() == null) return;
                if (tocSummaries != null) {
                    ReaderMenuFragment.k(ReaderMenuFragment.this).a();
                    ReaderMenuFragment.a(ReaderMenuFragment.this, tocSummaries);
                } else {
                    ReaderMenuFragment.k(ReaderMenuFragment.this).b();
                }
            }
        };
        String[] arrstring = new String[]{this.e};
        bA2.b(arrstring);
        if (am.q((Context) this.getActivity())) {
            new bz(this, 0).b((Object[]) new Void[0]);
            return;
        } else {
            if (this.getView() == null) return;
            {
                this.getView().findViewById(R.id.slm_reader_layout_ad).setVisibility(View.GONE);
                return;
            }
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_reader_menu, viewGroup, false);
        ((RelativeLayout) view.findViewById(R.id.rl_ad_container)).setPadding(0, am.k((Context) this.getActivity()), 0, 0);
        view.findViewById(R.id.slm_reader_all_post).setOnClickListener(this.j);
        this.g = (LoadingContainer) view.findViewById(R.id.loading_container);
        view.findViewById(R.id.slm_reader_relate_book).setOnClickListener(this.j);
        i.a().a(this);
        return view;
    }

    @Override
    public void onPause() {
        super.onPause();
        a.a().c();
    }

    class TocHolder {
        TextView link;
        TextView time;
        TextView title;

        TocHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.title);
            this.link = (TextView) view.findViewById(R.id.link);
            this.time = (TextView) view.findViewById(R.id.time);
        }
    }

    public class DownLoadDialogFragment extends DialogFragment {
        private SmartImageView a;

        public static DownLoadDialogFragment a(String string, String string2, String string3) {
            DownLoadDialogFragment DownLoadDialogFragment = new DownLoadDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("name", string);
            bundle.putString("size", string2);
            bundle.putString("link", string3);
            DownLoadDialogFragment.setArguments(bundle);
            return DownLoadDialogFragment;
        }

        static /* synthetic */ SmartImageView a(DownLoadDialogFragment DownLoadDialogFragment) {
            return DownLoadDialogFragment.a;
        }

        @Override
        public void onActivityCreated(Bundle bundle) {
            super.onActivityCreated(bundle);
            this.a = (SmartImageView) this.getActivity().findViewById(R.id.slm_reader_app_icon);
        }

        @Override
        public Dialog onCreateDialog(Bundle bundle) {
            String string = this.getArguments().getString("name");
            String string2 = this.getArguments().getString("link");
            String string3 = this.getArguments().getString("size");
            h h2 = new h(this.getActivity()).a(R.string.download);
            h2.e = "\u662f\u5426\u4e0b\u8f7d" + string + "(" + string3 + "\uff0c\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f";
            return h2.a(R.string.download, (DialogInterface.OnClickListener) ((Object) new by(this, string, string2))).b(R.string.cancel, null).a();
        }
    }

}
