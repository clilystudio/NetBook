package com.clilystudio.netbook.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AliPayOrder$PayOrder {

    private String _input_charset;
    private String body;
    private String it_b_pay;
    private String notify_url;
    private String out_trade_no;
    private String partner;
    private String payment_type;
    private String seller_id;
    private String service;
    private String sign;
    private String sign_type;
    private String subject;
    private String total_fee;

    public String getBody() {
        return body;
    }

    public void setBody(String String1) {
        body = String1;
    }

    public String getIt_b_pay() {
        return it_b_pay;
    }

    public void setIt_b_pay(String String1) {
        it_b_pay = String1;
    }

    public String getNotify_url() {
        return notify_url;
    }

    public void setNotify_url(String String1) {
        notify_url = String1;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setOut_trade_no(String String1) {
        out_trade_no = String1;
    }

    public String getPartner() {
        return partner;
    }

    public void setPartner(String String1) {
        partner = String1;
    }

    public String getPayString() {
        String String1 = new StringBuilder("_input_charset=\"").append(_input_charset).append("\"").toString();
        String String2 = new StringBuilder().append(String1).append("&body=\"").append(body).append("\"").toString();
        String String3 = new StringBuilder().append(String2).append("&it_b_pay=\"").append(it_b_pay).append("\"").toString();
        String String4 = new StringBuilder().append(String3).append("&notify_url=\"").append(notify_url).append("\"").toString();
        String String5 = new StringBuilder().append(String4).append("&out_trade_no=\"").append(out_trade_no).append("\"").toString();
        String String6 = new StringBuilder().append(String5).append("&partner=\"").append(partner).append("\"").toString();
        String String7 = new StringBuilder().append(String6).append("&payment_type=\"").append(payment_type).append("\"").toString();
        String String8 = new StringBuilder().append(String7).append("&seller_id=\"").append(seller_id).append("\"").toString();
        String String9 = new StringBuilder().append(String8).append("&service=\"").append(service).append("\"").toString();
        String String10 = new StringBuilder().append(String9).append("&subject=\"").append(subject).append("\"").toString();
        String String11 = new StringBuilder().append(String10).append("&total_fee=\"").append(total_fee).append("\"").toString();

        try {
            sign = URLEncoder.encode(sign, "UTF-8");
        } catch (UnsupportedEncodingException UnsupportedEncodingException12) {
            UnsupportedEncodingException12.printStackTrace();
        }
        return new StringBuilder().append(String11).append("&sign=\"").append(sign).append("\"&sign_type=\"").append(sign_type).append("\"").toString();
    }

    public String getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(String String1) {
        payment_type = String1;
    }

    public String getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(String String1) {
        seller_id = String1;
    }

    public String getService() {
        return service;
    }

    public void setService(String String1) {
        service = String1;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String String1) {
        sign = String1;
    }

    public String getSign_type() {
        return sign_type;
    }

    public void setSign_type(String String1) {
        sign_type = String1;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String String1) {
        subject = String1;
    }

    public String getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(String String1) {
        total_fee = String1;
    }

    public String get_input_charset() {
        return _input_charset;
    }

    public void set_input_charset(String String1) {
        _input_charset = String1;
    }
}
