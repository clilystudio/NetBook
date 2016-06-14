package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;

public class MyUGCListFragment extends AbsUGCListFragment {
    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        b.a();
        return b.b().g(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u5355\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427";
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
        }
        this.c.notifyDataSetChanged();
    }
}
