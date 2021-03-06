package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.RelateBookListActivity;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.widget.LoadingContainer;

import java.util.List;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderMenuFragment extends Fragment {
    private String mBookId;
    private String f;
    private LoadingContainer g;
    private View.OnClickListener j;

    public ReaderMenuFragment() {
        this.j = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switch (v.getId()) {
                    case R.id.slm_reader_relate_book:
                        Intent intent = new IntentBuilder().put(getActivity(), RelateBookListActivity.class)
                                .putSerializable("RelateBookRoot", null)
                                .put("book_list_title", "你可能感兴趣")
                                .put("bookId", mBookId)
                                .put("entrancePosition", 2)
                                .build();
                        startActivity(intent);
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

    static void a(ReaderMenuFragment readerMenuFragment, Activity activity, TocSummary tocSummary) {
        activity.finish();
        MyApplication.getInstance().setBookId(readerMenuFragment.mBookId);
        CommonUtil.setReadMode(readerMenuFragment.mBookId, 10);
        BusProvider.getInstance().post(new ModeChangedEvent(1));
        readerMenuFragment.startActivity(ReaderActivity.a(readerMenuFragment.getActivity(), readerMenuFragment.mBookId, readerMenuFragment.f, tocSummary.get_id(), (String)null, true));
    }

    static void a(final ReaderMenuFragment readerMenuFragment, List list) {
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
                    TocHolder.time.setText(DateTimeUtil.e(tocSummary.getUpdated()));
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

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mBookId = this.getArguments().getString("BOOK_ID");
        this.f = this.getArguments().getString("BOOK_TITLE");
        int n2 = CommonUtil.getStatusBarHeight(this.getActivity());
        if (this.getView() != null && n2 != 0) {
            this.getView().findViewById(R.id.slm_frame).setPadding(0, n2, 1, 0);
        }
        BaseAsyncTask<String, Void, List<TocSummary>> bA2 = new BaseAsyncTask<String, Void, List<TocSummary>>() {

            @Override
            protected List<TocSummary> doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().getTocSummaryList(params[0]);
            }

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                ReaderMenuFragment.this.g.c();
            }

            @Override
            protected void onPostExecute(List<TocSummary> tocSummaries) {
                super.onPostExecute(tocSummaries);
                if (getActivity() == null) return;
                if (tocSummaries != null) {
                    ReaderMenuFragment.this.g.a();
                    ReaderMenuFragment.a(ReaderMenuFragment.this, tocSummaries);
                } else {
                    ReaderMenuFragment.this.g.b();
                }
            }
        };
        String[] arrstring = new String[]{this.mBookId};
        bA2.b(arrstring);
        if (this.getView() != null) {
            this.getView().findViewById(R.id.slm_reader_layout_ad).setVisibility(View.GONE);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_reader_menu, viewGroup, false);
        view.findViewById(R.id.rl_ad_container).setPadding(0, CommonUtil.getStatusBarHeight(this.getActivity()), 0, 0);
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
