package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayConsumeRecord;
import com.clilystudio.netbook.model.PayConsumeRecord.Order;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class Z extends e<String, Void, List<PayConsumeRecord.Order>> {
    private Z(PayConsumeActivity paramPayConsumeActivity) {
    }

    private List<PayConsumeRecord.Order> a(String[] paramArrayOfString) {
        try {
            PayConsumeRecord localPayConsumeRecord = b.b().b(paramArrayOfString[0], PayConsumeActivity.c(this.a).size(), 10);
            if ((localPayConsumeRecord != null) && (localPayConsumeRecord.isOk()) && (localPayConsumeRecord.getOrders() != null)) {
                List localList = Arrays.asList(localPayConsumeRecord.getOrders());
                return localList;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}
