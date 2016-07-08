package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.event.UpdateUgcListEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.squareup.otto.Subscribe;

import java.util.Collections;
import java.util.Comparator;
import java.util.Date;

public class DraftUGCListFragment extends AbsUGCListFragment {
    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        com.clilystudio.netbook.api.b.a();
        return com.clilystudio.netbook.api.b.b().h(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "草稿箱里没有书单";
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.clilystudio.netbook.event.i.a().register(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().unregister(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot.UGCBook ugcBook;
        int n2 = n - this.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < this.i.size() && (ugcBook = this.i.get(n2)) != null) {
            Intent intent = new Intent(this.getActivity(), UGCDetailActivity.class);
            intent.putExtra("book_id", ugcBook.get_id());
            intent.putExtra("my_list", true);
            intent.putExtra("is_draft", true);
            this.startActivity(intent);
        }
    }

    @Subscribe
    public void onUpdateUgcList(UpdateUgcListEvent j2) {
        if (this.i == null || this.c == null) {
            return;
        }
        for (UGCBookListRoot.UGCBook ugcBook : this.i) {
            if (!ugcBook.get_id().equals(j2.getId())) continue;
            ugcBook.setCover(j2.getCover());
            ugcBook.setTitle(j2.getTitle());
            ugcBook.setDesc(j2.getDesc());
            ugcBook.setBookCount(j2.getSize());
            ugcBook.setUpdated(new Date());
        }
        Collections.sort(this.i, new Comparator<UGCBookListRoot.UGCBook>() {

            @Override
            public int compare(UGCBookListRoot.UGCBook lhs, UGCBookListRoot.UGCBook rhs) {
                if (lhs.getUpdated().before(rhs.getUpdated())) {
                    return 1;
                }
                return -1;
            }
        });
        this.c.a(this.i);
    }
}
