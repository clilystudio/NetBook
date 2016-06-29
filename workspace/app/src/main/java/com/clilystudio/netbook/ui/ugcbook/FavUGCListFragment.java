package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class FavUGCListFragment extends AbsUGCListFragment implements AdapterView.OnItemLongClickListener {
    private ListView k;
    private W l;
    private PullToRefreshListView m;

    static /* synthetic */ PullToRefreshListView a(FavUGCListFragment favUGCListFragment) {
        return favUGCListFragment.m;
    }

    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        com.clilystudio.netbook.api.b.a();
        return com.clilystudio.netbook.api.b.b().f(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "这里还没有书单，去收藏一个吧";
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = (PullToRefreshListView) this.getView().findViewById(R.id.ptr_list);
        this.k = this.m.getRefreshableView();
        this.k.setOnItemLongClickListener(this);
        this.l = this.b();
    }

    @Override
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int n, long l2) {
        int n2 = n - this.k.getHeaderViewsCount();
        if (n2 < 0 || n2 >= this.l.getCount()) {
            return false;
        }
        final UGCBookListRoot.UGCBook ugcBook = (UGCBookListRoot.UGCBook) this.l.getItem(n2);
        if (ugcBook == null) {
            return false;
        }
        String string = ugcBook.getTitle();
        BaseDialog.Builder h2 = new BaseDialog.Builder(this.getActivity());
        h2.setTitle(string);
        h2.setPositiveButton("删除", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                Account account = am.a(FavUGCListFragment.this.getActivity());
                if (account != null) {
                    FavUGCListFragment.a(FavUGCListFragment.this).setRefreshing();
                    com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> h2 = new com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus>() {

                        @Override
                        protected ResultStatus doInBackground(String... params) {
                            com.clilystudio.netbook.api.b.a();
                            return com.clilystudio.netbook.api.b.b().E(params[0], params[1]);
                        }

                        @Override
                        protected void onPostExecute(ResultStatus resultStatus) {
                            super.onPostExecute(resultStatus);
                            if (resultStatus != null && resultStatus.isOk()) {
                                FavUGCListFragment.this.a();
                                com.clilystudio.netbook.util.e.a(FavUGCListFragment.this.getActivity(), "删除成功");
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(FavUGCListFragment.this.getActivity(), "删除失败");
                        }
                    };
                    String[] arrstring = new String[]{account.getToken(), ugcBook.get_id()};
                    h2.b(arrstring);
                }
            }
        }).create().show();
        return true;
    }
}
