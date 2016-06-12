package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.model.ResultStatus;

final class as extends com.clilystudio.netbook.a.e {

    private PostUsefulView a;

    as(PostUsefulView PostUsefulView1, byte byte2) {
        this(PostUsefulView1);
    }

    private as(PostUsefulView PostUsefulView1) {
        a = PostUsefulView1;
    }

    private static transient ResultStatus a(String[] String_1darray1) {
        ResultStatus ResultStatus4;

        try {
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().m(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
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
            if (((ResultStatus) Object2).isOk()) {
                int int3;

                if (PostUsefulView.a(a))
                    int3 = 1;
                else
                    int3 = 2;
                PostUsefulView.a(a, int3, true);
                PostUsefulView.a(a, int3);
                com.clilystudio.netbook.util.e.a(PostUsefulView.b(a), "\u8BC4\u4EF7\u6210\u529F");
            } else if ("TOKEN_INVALID".equals(((ResultStatus) Object2).getCode())) {
                com.clilystudio.netbook.util.e.a(PostUsefulView.b(a), 2131034529);
                return;
            } else if ("ALREADY_SET".equals(((ResultStatus) Object2).getCode())) {
                com.clilystudio.netbook.util.e.a(PostUsefulView.b(a), "\u60A8\u5DF2\u7ECF\u8BC4\u4EF7\u8FC7\u5566");
                return;
            }
        } else
            com.clilystudio.netbook.util.e.a(PostUsefulView.b(a), "\u8BC4\u4EF7\u5931\u8D25");
    }
}
