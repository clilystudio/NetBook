package com.clilystudio.netbook.model;

public class GameGiftResponse extends ResultStatus {
    public GiftCode giftCode;

    public class GiftCode {
        final /* synthetic */ GameGiftResponse this$0;
        public String _id;
        public String code;
        public String game;
        public String user;

        public GiftCode(GameGiftResponse gameGiftResponse) {
            this.this$0 = gameGiftResponse;
        }
    }

}
