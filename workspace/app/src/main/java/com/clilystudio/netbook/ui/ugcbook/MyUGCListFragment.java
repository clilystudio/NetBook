package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.UpdateUgcListEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.squareup.otto.Subscribe;

public class MyUGCListFragment extends AbsUGCListFragment {
    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        ApiServiceProvider.getInstance();
        return ApiServiceProvider.getApiService().getPostedUGCBookListRoot(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "这里还没有书单，去发布一个吧";
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BusProvider.getInstance().register(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot.UGCBook uGCBookListRoot$UGCBook;
        int n2 = n - this.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < this.i.size() && (uGCBookListRoot$UGCBook = this.i.get(n2)) != null) {
            Intent intent = new Intent(this.getActivity(), UGCDetailActivity.class);
            intent.putExtra("book_id", uGCBookListRoot$UGCBook.get_id());
            intent.putExtra("my_list", true);
            this.startActivity(intent);
        }
    }

    @Subscribe
    public void onUpdateUgcList(UpdateUgcListEvent j2) {
        if (this.i == null || this.c == null) {
            return;
        }
        for (UGCBookListRoot.UGCBook uGCBookListRoot$UGCBook : this.i) {
            if (!uGCBookListRoot$UGCBook.get_id().equals(j2.getId())) continue;
            uGCBookListRoot$UGCBook.setCover(j2.getCover());
            uGCBookListRoot$UGCBook.setTitle(j2.getTitle());
            uGCBookListRoot$UGCBook.setDesc(j2.getDesc());
            uGCBookListRoot$UGCBook.setBookCount(j2.getSize());
        }
        this.c.notifyDataSetChanged();
    }
}
