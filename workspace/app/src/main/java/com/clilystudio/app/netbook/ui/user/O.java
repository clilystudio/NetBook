package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PayChargeRecord;
import com.clilystudio.app.netbook.model.PayChargeRecord.Order;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class O extends e_BaseAsyncTask<String, Void, List<PayChargeRecord.Order>> {
    private O(PayChargeActivity paramPayChargeActivity) {
    }

    private List<PayChargeRecord.Order> a(String[] paramArrayOfString) {
        try {
            PayChargeRecord localPayChargeRecord = b.b().a(paramArrayOfString[0], PayChargeActivity.a(this.a).size(), 10);
            if ((localPayChargeRecord != null) && (localPayChargeRecord.isOk()) && (localPayChargeRecord.getOrders() != null)) {
                List localList = Arrays.asList(localPayChargeRecord.getOrders());
                return localList;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.O
 * JD-Core Version:    0.6.2
 */