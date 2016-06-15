package com.clilystudio.netbook.model;

public class GameGiftResponse extends ResultStatus {
    public GiftCode giftCode;

    public class GiftCode {
        public String _id;
        public String code;
        public String game;
        public String user;
    }

}
