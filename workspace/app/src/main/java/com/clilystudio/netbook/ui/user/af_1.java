package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.model.PayVoucherRecord;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class af
        extends com.clilystudio.netbook.a.e<String, Void, List<PayVoucherRecord.Voucher>> {
    private boolean a;
    private /* synthetic */ PayVoucherFragment b;

    public af(PayVoucherFragment payVoucherFragment) {
        this.b = payVoucherFragment;
        this.a = true;
        this.a = true;
    }

    public af(PayVoucherFragment payVoucherFragment, boolean bl) {
        this.b = payVoucherFragment;
        this.a = true;
        this.a = false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<PayVoucherRecord.Voucher> a() {
        int n = this.b.getArguments().getInt("tag_index_key");
        String string = this.b.getArguments().getString("token_key");
        b.a();
        PayVoucherRecord payVoucherRecord = b.b().a(string, PayVoucherFragment.d(this.b)[n], PayVoucherFragment.a(this.b).size(), 10);
        if (payVoucherRecord == null) return null;
        try {
            if (!payVoucherRecord.isOk()) return null;
            if (payVoucherRecord.getVouchers() == null) return null;
            return Arrays.asList(payVoucherRecord.getVouchers());
        } catch (IOException var1_5) {
            var1_5.printStackTrace();
        }
        return null;
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        PayVoucherFragment.b(this.b).setVisibility(8);
        PayVoucherFragment.e(this.b).setVisibility(8);
        PayVoucherFragment.f(this.b).setVisibility(8);
        PayVoucherFragment.g(this.b).n();
        boolean bl = PayVoucherFragment.a(this.b).isEmpty();
        if (list != null) {
            int n;
            if (!this.a) {
                PayVoucherFragment.a(this.b).clear();
            }
            if ((n = list.size()) > 0) {
                PayVoucherFragment.a(this.b).addAll(list);
                PayVoucherFragment.h(this.b).a(PayVoucherFragment.a(this.b));
                if (n >= 10) {
                    PayVoucherFragment.g(this.b).setOnLastItemVisibleListener(PayVoucherFragment.i(this.b));
                    return;
                }
            } else if (bl) {
                PayVoucherFragment.b(this.b).setVisibility(0);
                return;
            }
            PayVoucherFragment.g(this.b).setOnLastItemVisibleListener(null);
            return;
        }
        PayVoucherFragment.g(this.b).setOnLastItemVisibleListener(PayVoucherFragment.i(this.b));
        e.a((Activity) this.b.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
