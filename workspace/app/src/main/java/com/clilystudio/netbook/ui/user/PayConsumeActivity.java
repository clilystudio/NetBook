package com.clilystudio.netbook.ui.user;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.PayConsumeRecord;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PayConsumeActivity extends BaseLoadingActivity {
    private S a;
    private View b;
    private RelativeLayout c;
    private ScrollLoadListView e;
    private List<PayConsumeRecord$Order> f = new ArrayList<PayConsumeRecord$Order>();
    private String g;
    private av h;

    public PayConsumeActivity() {
        this.h = new Q(this);
    }

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, PayConsumeActivity.class).a("token_key", string).a("title_key", string2).a();
    }

    static /* synthetic */ ScrollLoadListView a(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.e;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(PayConsumeActivity payConsumeActivity, PayConsumeRecord$Order payConsumeRecord$Order) {
        ClipboardManager clipboardManager = (ClipboardManager) payConsumeActivity.getSystemService("clipboard");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(payConsumeRecord$Order.getBookName() + ", ");
        if (payConsumeRecord$Order.getPayType() == PayConsumeRecord.PayType.SINGLE_CHAPTER) {
            for (String string : payConsumeRecord$Order.getTitles()) {
                stringBuffer.append(string + ", ");
            }
        } else if (payConsumeRecord$Order.getPayType() == PayConsumeRecord.PayType.AUTO_PURCHASE) {
            stringBuffer.append(payConsumeRecord$Order.getChapterTitle() + ", ");
       } else if (payConsumeRecord$Order.getPayType() == PayConsumeRecord.PayType.WHOLE_BOOK) {
            stringBuffer.append(payConsumeRecord$Order.getChapterTitle() + ", ");
        }
//        switch (R.a[payConsumeRecord$Order.getPayType().ordinal()]) {
//            case 1: {
//                break;
//            }
//            case 2:
//            case 3: {
//                stringBuffer.append(payConsumeRecord$Order.getChapterTitle() + ", ");
//            }
//        }
        stringBuffer.append("" + payConsumeRecord$Order.getUseCurrency() + "\u8ffd\u4e66\u5e01");
        if (payConsumeRecord$Order.getUseVoucher() > 0) {
            stringBuffer.append("+" + payConsumeRecord$Order.getUseVoucher() + "\u8ffd\u4e66\u5238, ");
        } else {
            stringBuffer.append(", ");
        }
        stringBuffer.append(t.d((Date) payConsumeRecord$Order.getCreated()) + ", ");
        stringBuffer.append(payConsumeRecord$Order.getPayTypeString() + ", ");
        stringBuffer.append("\u8ba2\u5355\u53f7 " + payConsumeRecord$Order.get_id());
        clipboardManager.setPrimaryClip(ClipData.newPlainText("simple text", stringBuffer.toString()));
    }

    static /* synthetic */ RelativeLayout b(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.c;
    }

    static /* synthetic */ List c(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.f;
    }

    static /* synthetic */ View d(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.b;
    }

    static /* synthetic */ S e(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.a;
    }

    static /* synthetic */ av f(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.h;
    }

    static /* synthetic */ String g(PayConsumeActivity payConsumeActivity) {
        return payConsumeActivity.g;
    }

    @Override
    protected final void b() {
        this.i();
        Z z = new Z(this, 0);
        String[] arrstring = new String[]{this.g};
        z.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.scroll_listview);
        this.c = (RelativeLayout) this.findViewById(R.id.base_layout);
        TextView textView = (TextView) this.findViewById(R.id.common_list_empty);
        textView.setGravity(1);
        textView.setText("\u60a8\u8fd8\u6ca1\u6709\u6d88\u8d39\u8bb0\u5f55");
        textView.setCompoundDrawablesWithIntrinsicBounds(null, this.getResources().getDrawable(R.drawable.pay_account_empty), null, null);
        textView.setTextSize(2, this.getResources().getDimension(R.dimen.text_size_15) / 3.0f);
        textView.setCompoundDrawablePadding((int) this.getResources().getDimension(R.dimen.dp_24));
        this.b(this.getIntent().getStringExtra("title_key"));
        this.g = this.getIntent().getStringExtra("token_key");
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.b = layoutInflater.inflate(R.layout.loading_item, null);
        this.b.setVisibility(View.GONE);
        this.e = (ScrollLoadListView) this.findViewById(R.id.content_scroll_list);
        this.e.addFooterView(this.b);
        this.e.setDividerHeight(0);
        this.e.setOnScrollListener(new P(this));
        this.a = new S(this, layoutInflater);
        this.e.setAdapter(this.a);
        this.b();
    }
}
