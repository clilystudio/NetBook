package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class P extends com.clilystudio.netbook.a.e {

    private N a;

    P(N N1, byte byte2) {
        this(N1);
    }

    private P(N N1) {
        a = N1;
    }

    private static transient ResultStatus a(String[] String_1darray1) {
        ResultStatus ResultStatus4;

        try {
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().y(String_1darray1[0], String_1darray1[1]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return ResultStatus4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null) {
            if (((ResultStatus) Object2).isOk())
                e.a(N.a(a), "\u6536\u85CF\u6210\u529F");
            else if ("11000".equals(((ResultStatus) Object2).getCode())) {
                e.a(N.a(a), "\u4F60\u5DF2\u7ECF\u6536\u85CF\u8FC7\u5566\uFF5E");
                return;
            }
        } else
            e.a(N.a(a), "\u6536\u85CF\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
