package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.RelateBookListActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.LoadingContainer;

import java.util.List;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderMenuFragment extends Fragment {
    private String e;
    private String f;
    private LoadingContainer g;
    private View.OnClickListener j;

    public ReaderMenuFragment() {
        this.j = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switch (v.getId()) {
                    case R.id.slm_reader_relate_book:
                        ReaderMenuFragment.i(ReaderMenuFragment.this);
                        break;
                    case R.id.slm_reader_more_source:
                        ReaderActivity readerActivity = (ReaderActivity) ReaderMenuFragment.this.getActivity();
                        if (readerActivity == null) return;
                        readerActivity.i();
                        break;
                }
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
        MyApplication.getInstance().setBookId(readerMenuFragment.e);
        am.c(readerMenuFragment.e, 10);
        BusProvider.getInstance().post(new ModeChangedEvent(1));
        readerMenuFragment.startActivity(ReaderActivity.a(readerMenuFragment.getActivity(), readerMenuFragment.e, readerMenuFragment.f, tocSummary.get_id(), (String)null, true));
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
                    TocHolder.time.setText(t.e(tocSummary.getUpdated()));
                    TocHolder.title.setText(tocSummary.getLastChapter());
                    viewGroup.addView(view);
                    view.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            BaseDialog.Builder h2 = new BaseDialog.Builder(fragmentActivity);
                            h2.setMessage("更换来源将会删除之前的预读章节，是否继续？");
                            h2.setPositiveButton("更换", new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    dialog.dismiss();
                                    ReaderMenuFragment.a(readerMenuFragment, fragmentActivity, tocSummary);
                                }
                            }).setNegativeButton("取消", null).show();
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
        readerMenuFragment.startActivity(RelateBookListActivity.a(readerMenuFragment.getActivity(), null, "你可能感兴趣", readerMenuFragment.e));
    }

    static /* synthetic */ LoadingContainer k(ReaderMenuFragment readerMenuFragment) {
        return readerMenuFragment.g;
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.e = this.getArguments().getString("BOOK_ID");
        this.f = this.getArguments().getString("BOOK_TITLE");
        int n2 = am.k(this.getActivity());
        if (this.getView() != null && n2 != 0) {
            this.getView().findViewById(R.id.slm_frame).setPadding(0, n2, 1, 0);
        }
        BaseAsyncTask<String, Void, List<TocSummary>> bA2 = new BaseAsyncTask<String, Void, List<TocSummary>>() {

            @Override
            protected List<TocSummary> doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().d(params[0]);
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
        if (this.getView() != null) {
            this.getView().findViewById(R.id.slm_reader_layout_ad).setVisibility(View.GONE);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_reader_menu, viewGroup, false);
        view.findViewById(R.id.rl_ad_container).setPadding(0, am.k(this.getActivity()), 0, 0);
        view.findViewById(R.id.slm_reader_all_post).setOnClickListener(this.j);
        this.g = (LoadingContainer) view.findViewById(R.id.loading_container);
        view.findViewById(R.id.slm_reader_relate_book).setOnClickListener(this.j);
        BusProvider.getInstance().register(this);
        return view;
    }

    static final class TocHolder {
        TextView link;
        TextView time;
        TextView title;

        TocHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.title);
            this.link = (TextView) view.findViewById(R.id.link);
            this.time = (TextView) view.findViewById(R.id.time);
        }
    }
}
