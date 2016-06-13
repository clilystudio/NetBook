package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;

import java.util.Collections;
import java.util.Date;

public class DraftUGCListFragment
        extends AbsUGCListFragment {
    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        b.a();
        return b.b().h(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "\u8349\u7a3f\u7bb1\u91cc\u6ca1\u6709\u4e66\u5355";
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook;
        int n2 = n - this.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < this.i.size() && (uGCBookListRoot$UGCBook = (UGCBookListRoot$UGCBook) this.i.get(n2)) != null) {
            Intent intent = new Intent(this.getActivity(), UGCDetailActivity.class);
            intent.putExtra("book_id", uGCBookListRoot$UGCBook.get_id());
            intent.putExtra("my_list", true);
            intent.putExtra("is_draft", true);
            this.startActivity(intent);
        }
    }

    @l
    public void onUpdateUgcList(J j2) {
        if (this.i == null || this.c == null) {
            return;
        }
        for (UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook : this.i) {
            if (!uGCBookListRoot$UGCBook.get_id().equals(j2.b())) continue;
            uGCBookListRoot$UGCBook.setCover(j2.a());
            uGCBookListRoot$UGCBook.setTitle(j2.c());
            uGCBookListRoot$UGCBook.setDesc(j2.d());
            uGCBookListRoot$UGCBook.setBookCount(j2.e());
            uGCBookListRoot$UGCBook.setUpdated(new Date());
        }
        Collections.sort(this.i, new f(this));
        this.c.a(this.i);
    }
}
