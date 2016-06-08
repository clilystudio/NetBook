package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GirlTopicResult;

final class br extends e<String, Void, GirlTopicResult> {
    private br(GirlTopicActivity paramGirlTopicActivity) {
    }

    private GirlTopicResult a(String[] paramArrayOfString) {
        try {
            GirlTopicResult localGirlTopicResult = b.b().F(paramArrayOfString[0]);
            return localGirlTopicResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

